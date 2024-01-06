/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2023 Juan Pablo Lozano <libredeb@gmail.com>
 */

public class GCleaner : Gtk.Application {

    public Gtk.ApplicationWindow main_window { get; set; }

    public GCleaner () {
        Object (
            application_id: "com.github.libredeb.gcleaner"
        );
    }
    
    protected override void activate () {
        main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "GCleaner"
        };
        main_window.present ();
    }

    public static int main (string[] args) {
        return new GCleaner ().run (args);
    }
}
