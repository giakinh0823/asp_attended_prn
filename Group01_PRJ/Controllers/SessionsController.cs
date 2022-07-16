using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Group01_PRJ.Models;

namespace Group01_PRJ.Controllers
{
    public class SessionsController : Controller
    {
        private readonly AttendedContext _context;

        public SessionsController(AttendedContext context)
        {
            _context = context;
        }

        // GET: Sessions
        public async Task<IActionResult> Index()
        {
            var attendedContext = _context.Sessions.Include(s => s.Class).Include(s => s.Course).Include(s => s.Room).Include(s => s.Slot).Include(s => s.User);
            return View(await attendedContext.ToListAsync());
        }

        // GET: Sessions/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var session = await _context.Sessions
                .Include(s => s.Class)
                .Include(s => s.Course)
                .Include(s => s.Room)
                .Include(s => s.Slot)
                .Include(s => s.User)
                .FirstOrDefaultAsync(m => m.Roomid == id);
            if (session == null)
            {
                return NotFound();
            }

            return View(session);
        }

        // GET: Sessions/Create
        public IActionResult Create()
        {
            ViewData["Classid"] = new SelectList(_context.Classes, "Id", "Name");
            ViewData["Courseid"] = new SelectList(_context.Courses, "Id", "Name");
            ViewData["Roomid"] = new SelectList(_context.Rooms, "Id", "Name");
            ViewData["Slotid"] = new SelectList(_context.Slots, "Id", "Name");
            ViewData["Userid"] = new SelectList(_context.Users.Where(user => user.UserGroups.Any(item => item.Group.Name.ToLower()=="teacher")), "Id", "Email");
            return View();
        }

        // POST: Sessions/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Roomid,Slotid,Date,Courseid,Userid,Classid")] Session session)
        {
            if (ModelState.IsValid)
            {
                _context.Add(session);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["Classid"] = new SelectList(_context.Classes, "Id", "Name", session.Classid);
            ViewData["Courseid"] = new SelectList(_context.Courses, "Id", "Name", session.Courseid);
            ViewData["Roomid"] = new SelectList(_context.Rooms, "Id", "Name", session.Roomid);
            ViewData["Slotid"] = new SelectList(_context.Slots, "Id", "Name", session.Slotid);
            ViewData["Userid"] = new SelectList(_context.Users.Where(user => user.UserGroups.Any(item => item.Group.Name.ToLower() == "teacher")), "Id", "Email", session.Userid);
            return View(session);
        }

        // GET: Sessions/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var session = await _context.Sessions.FindAsync(id);
            if (session == null)
            {
                return NotFound();
            }
            ViewData["Classid"] = new SelectList(_context.Classes, "Id", "Name", session.Classid);
            ViewData["Courseid"] = new SelectList(_context.Courses, "Id", "Name", session.Courseid);
            ViewData["Roomid"] = new SelectList(_context.Rooms, "Id", "Name", session.Roomid);
            ViewData["Slotid"] = new SelectList(_context.Slots, "Id", "Name", session.Slotid);
            ViewData["Userid"] = new SelectList(_context.Users.Where(user => user.UserGroups.Any(item => item.Group.Name.ToLower() == "teacher")), "Id", "Email", session.Userid);
            return View(session);
        }

        // POST: Sessions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Roomid,Slotid,Date,Courseid,Userid,Classid")] Session session)
        {
            if (id != session.Roomid)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(session);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SessionExists(session.Roomid))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["Classid"] = new SelectList(_context.Classes, "Id", "Name", session.Classid);
            ViewData["Courseid"] = new SelectList(_context.Courses, "Id", "Name", session.Courseid);
            ViewData["Roomid"] = new SelectList(_context.Rooms, "Id", "Name", session.Roomid);
            ViewData["Slotid"] = new SelectList(_context.Slots, "Id", "Name", session.Slotid);
            ViewData["Userid"] = new SelectList(_context.Users.Where(user => user.UserGroups.Any(item => item.Group.Name.ToLower() == "teacher")), "Id", "Email", session.Userid);
            return View(session);
        }

        // GET: Sessions/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var session = await _context.Sessions
                .Include(s => s.Class)
                .Include(s => s.Course)
                .Include(s => s.Room)
                .Include(s => s.Slot)
                .Include(s => s.User)
                .FirstOrDefaultAsync(m => m.Roomid == id);
            if (session == null)
            {
                return NotFound();
            }

            return View(session);
        }

        // POST: Sessions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var session = await _context.Sessions.FindAsync(id);
            _context.Sessions.Remove(session);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool SessionExists(int id)
        {
            return _context.Sessions.Any(e => e.Roomid == id);
        }
    }
}
