# update-and-refresh_scoop-bat

This repository contains a batch file that automates the update, cleanup, and cache management of Scoop, a command-line installer for Windows.

## Description

The `update_and_refresh_scoop.bat` batch file performs the following tasks:

1. **Requests Administrative Privileges:** Ensures the script runs with administrative rights. If not already running as an administrator, it prompts for elevated permissions.

2. **Updates Scoop:** Uses Scoop's built-in `update` command to refresh Scoop itself.

3. **Updates Installed Apps:** Updates all installed applications managed by Scoop.

4. **Cleans Up Old Versions and Installers:** Removes old versions and installers to free up disk space.

5. **Cleans Up Scoop Cache:** Clears the Scoop cache to reclaim disk space and improve performance.

6. **Completion Message:** Displays a message indicating that the update, cleanup, and cache management processes are complete. Waits for user input before closing the window.

## Usage

1. **Download the Batch File:**
   - Download `update_and_refresh_scoop.bat` from this repository.

2. **Run the Batch File:**
   - Left-click on `update_and_refresh_scoop.bat`.

3. **Follow Prompts:**
   - The batch file will prompt for administrative privileges if it is not already running with elevated rights.
   - The script will then proceed to update Scoop, update installed apps, clean up old versions and installers, and clean up the Scoop cache.

4. **Completion:**
   - After all tasks are completed, the script will display a completion message and wait for a key press before closing the command window.

## Notes

- **Administrative Rights:** Administrative privileges are required to perform these operations. Ensure you have the necessary permissions.
- **Scoop Installation:** Make sure Scoop is installed on your system before running this script.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Feel free to submit issues and pull requests to improve the script or add new features.

## Contact

For any questions or support, please open an issue in this repository or contact the repository owner.

---

Feel free to customize this README further based on any additional details or instructions you'd like to include.
