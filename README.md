# Clark README

## Goal
Clark allows users to format a template document in a familiar WYSIWYG editor [Word DOC for now], using placeholders for dynamic text and images. Templates and dynamic text are stored on the server with basic revision control. Clark outputs finalized documents as DOCs or PDF's after text entry is complete.

## Workflow
1. Create document template in Word
  *Put custom fields in brackets - {EXAMPLE} wherever dynamic text is needed
  *Upload document template to server
2. Create doctype
  *Give doctype a name and specify template file
  *Add expected bracketed tags for given template file, specify if bracket content should be an image
3. Repeat 1-2 for as many doctypes as are required
4. Create a new project
5. Add pertinent doctypes to the project and fill in dynamic text values for each tag in the doctype
6. Generate finished document as DOC or PDF
7. Let Clark use his superpowers for something really mundane

## To-do
1. GenerateDoc() -  to insert stored text into bracketed tag locations using docxtemplater, store on server with date
2. Display generated docs and allow download
3. Copy entire document set for project to new project for easy re-use
4. Pretty up UI

## Known Issues
1. Document edit (fill in doc tag datum fields) from project page doesn't work - doc data fields stay blank after update

## Wishlist
1. Revision history for tag content changes
2. User management and ability to insert Clark user name as field in any document
3. ****Ability to read bracketed tags in document, so they don't have to be manually input
4. Global project tags, so common data (project name, number, client name, addresses, etc) is only input once and replicated to each doc

## Pie-in-the-Sky Wishlist
1. Digital signatures on PDF's
2. Act as simple doc management system
