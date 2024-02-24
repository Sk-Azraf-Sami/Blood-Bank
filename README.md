# Blood Donor Finder iOS App

[![Last Update](https://img.shields.io/badge/Last%20Update-February%2024%2C%202024-blue)](https://github.com/yourusername/your-repo)
[![Version](https://img.shields.io/badge/Version-1.0-green)](https://github.com/yourusername/your-repo)
[![Using Language](https://img.shields.io/badge/Using%20Language-Swift-orange)](https://github.com/yourusername/your-repo)

Welcome to the Blood Donor Finder iOS app! This application helps users find nearby blood donors quickly and easily.

<div style="display: flex;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/1.jpeg" alt="Image 1" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/2.jpeg" alt="Image 2" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/3.jpeg" alt="Image 3" width="30%">
</div>
<div style="display: flex;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/4.jpeg" alt="Image 1" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/5.jpeg" alt="Image 2" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/6.jpeg" alt="Image 3" width="30%">
</div>
<div style="display: flex;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/7.jpeg" alt="Image 1" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/8.jpeg" alt="Image 2" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/8-1.jpeg" alt="Image 3" width="30%">
</div>
<div style="display: flex;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/9.jpeg" alt="Image 1" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/10.jpeg" alt="Image 2" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/11.jpeg" alt="Image 3" width="30%">
</div>
<div style="display: flex;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/12.jpeg" alt="Image 1" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/13.jpeg" alt="Image 2" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/15.jpeg" alt="Image 3" width="30%">
</div>
<div style="display: flex;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/16.jpeg" alt="Image 1" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/17.jpeg" alt="Image 2" width="30%" style="margin-right: 20px;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/18.jpeg" alt="Image 3" width="30%">
</div>
<div style="display: flex;">
    <img src="https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Images/19.jpeg" alt="Image 2" width="30%" style="margin-right: 20px;">
</div>

## Features

- **Easy login and registration:** Users can easily sign up or log in to the app.
- **Search blood donor by blood group:** Users can search for blood donors based on their blood group.
- **Search blood donor by location:** Users can search for blood donors based on their location.
- **News updates of any accidents where immediate blood is needed:** Users receive news updates about accidents or emergencies where immediate blood donations are required.
- **Easy access to donor information:** Users can easily access donor information, including their address and contact details.
- **Telegram group community via blood request sent to all donors:** Users can join a Telegram group community where blood requests are sent to all registered donors for immediate assistance.
- **Easy to post blood request:** Users can easily post blood requests in case of emergencies or urgent blood needs.

## Installation

To install the Blood Donor Finder app on your iOS device, follow these steps:

1. Download the app from the App Store.
2. Open the app on your iOS device.
3. Sign up or log in to start using the app.

## Usage

1. Open the app and allow location access.
2. Search for blood donors based on your location.
3. Filter donors by blood type if needed.
4. Contact donors directly through the app to arrange blood donations.

## Contributing

We welcome contributions from everyone! Meet our team:

- [Mst. Rubaiya Raktin Raha](https://github.com/Raha111)
- [Tasfia Tasnim](https://github.com/tasfiatasnimraisa)
- [Md Raduan Islam Rian](https://github.com/ExpC0)
- [Sk. Azraf Sami](https://github.com/Sk-Azraf-Sami)
- [Shrabanti Debnath Urmi](https://github.com/Shrabanti94)


If you would like to contribute to the development of the Blood Donor Finder app, please follow these guidelines:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature-name`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin feature/your-feature-name`).
6. Create a new Pull Request.

## Version

This is version 1.0 of the Blood Donor Finder iOS app.

## Using Technology

- Swift
- Telegram API for messaging
- Firebase for database
- Newspaper API for JSON data

## About Feature Implementation

### AddViewController (Add Data):

- **Description:**
  - The AddViewController is responsible for adding donor information to the Firebase database.
- **Methods and Procedures:**
  - `ViewDidLoad`:
    - Initializes the view.
  - `DonorBtn Action`:
    - Validates user input.
    - Creates a dictionary representing donor information.
    - Gets a reference to the 'donor_info' branch in the Firebase database.
    - Generates a new child node with a unique key.
    - Sets the donor information under the new child node in the database.

### LastViewController (Show Data):

- **Description:**
  - The LastViewController displays donor information in a table view by fetching data from the Firebase database.
- **Methods and Procedures:**
  - `ViewDidLoad`:
    - Configures Firebase and prints the blood group and address.
    - Calls `fetchDataFromFirebase` to fetch donor data.
  - `fetchDataFromFirebase`:
    - Observes changes in the 'donor_info' branch of the Firebase database.
    - Clears existing data.
    - Iterates through the snapshot, extracts donor information, and filters based on blood group and address.
    - Creates BloodData objects and adds them to the `listBlood` array.
    - Reloads the table view to reflect updated data.

### SearchViewController (Search Data):

- **Description:**
  - The SearchViewController allows users to search for donors based on blood group.
- **Methods and Procedures:**
  - `ViewDidLoad`:
    - Sets up the view and adds a target for the text field for live searching.
  - `SearchRecord Action`:
    - Called when the text in the search field changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Documentation

For detailed documentation, please refer to [Blood Bank.pdf](https://github.com/Sk-Azraf-Sami/Blood-Bank/blob/main/Blood%20Bank.pdf).

## Contact

If you have any questions or feedback, feel free to contact with me or with my teammates 
