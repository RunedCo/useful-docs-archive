# Coding Knowledge Archive

This repository contains a comprehensive archive of useful coding information, resources, and documentation, built with MkDocs and the Material theme.

## What's Inside

- **General Coding Information**: A growing collection of programming resources and documentation
- **Chickensoft Documentation**: The original documentation for Chickensoft, an open source organization for the C# Godot community

## Setup

1. Install the required dependencies:

```bash
pip install -r requirements.txt
```

2. Run the local development server:

```bash
mkdocs serve
```

This will start a local server at http://127.0.0.1:8000/ where you can preview the documentation.

## Building the Site

To build the static site:

```bash
mkdocs build
```

This will create a `site` directory with the compiled HTML files.

## Automatic Deployment

This repository includes GitHub Actions workflows that automatically build and deploy the documentation site to GitHub Pages whenever changes are pushed to the main branch.

Two workflow options are available:

1. **deploy-docs.yml**: A standard workflow that uses the peaceiris/actions-gh-pages action for deployment.
2. **deploy-mkdocs.yml**: An alternative workflow that uses Python and mkdocs to build and deploy the site.

By default, the site will be deployed to the `gh-pages` branch. To enable GitHub Pages:

1. Go to your repository's Settings > Pages
2. Set the Source to "Deploy from a branch"
3. Select the "gh-pages" branch and "/ (root)" folder
4. Save your changes

The documentation will be available at `https://[username].github.io/[repository]/`

## Structure

- `docs/`: Contains all documentation files
  - `docs/index.md`: Main landing page
  - `docs/SUMMARY.md`: Navigation definition for literate-nav
  - `docs/chickensoft/`: Chickensoft documentation
    - `docs/chickensoft/SUMMARY.md`: Navigation definition for Chickensoft section
  - `docs/chickensoft/blog/`: Chickensoft blog posts
- `mkdocs.yml`: Configuration file for MkDocs
- `.github/workflows/`: GitHub Actions workflow files for deployment

## Navigation

The site uses the mkdocs-literate-nav plugin for automatic navigation generation. Navigation is defined in `SUMMARY.md` files:

1. The root `docs/SUMMARY.md` defines the main navigation structure
2. Subdirectory `SUMMARY.md` files define navigation for those sections
3. Folders that end with a `/` in the navigation automatically include all files within them

To add new content, simply:

1. Add your Markdown files to the appropriate directory
2. If needed, update the relevant `SUMMARY.md` file or just let the plugin discover them automatically

## Contributing

Contributions to this knowledge archive are welcome! Please feel free to submit pull requests with new content, corrections, or improvements.

## Customization

To customize the site appearance and behavior, edit the `mkdocs.yml` file. See the [MkDocs Material documentation](https://squidfunk.github.io/mkdocs-material/) for more options.
