# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Submission.delete_all
College.delete_all
User.delete_all


College.create(:name=>'University of Washington', :city=>'Seattle', :state=>'WA')
College.create(:name=>'Western Wahsington University', :city=>'Bellingham', :state=>'WA')
College.create(:name=>'Boston University', :city=>'Boston', :state=>'MA')
College.create(:name=>'Harvard University', :city=>'Cambridge', :state=>'MA')
College.create(:name=>'Tufts University', :city=>'Medford', :state=>'MA')
College.create(:name=>'Brown University', :city=>'Providence', :state=>'RI')
College.create(:name=>'Princeton University', :city=>'Princeton', :state=>'NJ')
College.create(:name=>'Columbia University', :city=>'New York', :state=>'NY')
College.create(:name=>'Massachusetts Institute of Technology', :city=>'Cambridge', :state=>'MA')
College.create(:name=>'University of Chicago', :city=>'Chicago', :state=>'IL')
College.create(:name=>'Yale University', :city=>'New Haven', :state=>'CT')
College.create(:name=>'Stanford University', :city=>'Stanford', :state=>'CA')
College.create(:name=>'Duke University', :city=>'Durham', :state=>'NC')
College.create(:name=>'University of Pennsylvania', :city=>'Philadelphia', :state=>'PA')
College.create(:name=>'Johns Hopkins University', :city=>'Baltimore', :state=>'MD')
College.create(:name=>'Northwestern University', :city=>'Evanston', :state=>'IL')
College.create(:name=>'Dartmouth College', :city=>'Hanover', :state=>'NH')
College.create(:name=>'Cornell University', :city=>'Ithaca', :state=>'NY')

User.create(:name=>'Emma', :email=>'emma@gmail.com', :password=>'emma', :undergrad_college_name=>'Boston University', :undergrad_major=>'Biology', :undergrad_minor=>'Chemistry', :undergrad_gpa=>3.6, :grad_college_name=>"", :grad_degree=>"", :grad_gpa=>nil, :gre_scores=>"V: 153, Q: 155, W: 5.0", :gmat_scores=>nil, :experience=>"Summer internship: worked doing literature reviews for a small nonprofit on a variety of environmental health impacts on population health, 1 yr on sorority executive board, special focus on philanthropy efforts with Ronald McDonald House Charities, 9 mo as a transplant coordinator, coordinating medical records, completing assessments and coordinating the entire process (screening to consent to recovery of tissue). Participated in a few projects with this job.")
User.create(:name=>'Nate', :email=>'nate@gmail.com', :password=>'nate', :undergrad_college_name=>'Harvard University', :undergrad_major=>'Economics', :undergrad_minor=>'Math', :undergrad_gpa=>3.4, :grad_college_name=>"Harvard", :grad_degree=>"MBA", :grad_gpa=>nil, :gre_scores=>nil, :gmat_scores=>nil, :experience=>"5 years in tech industry - marketing and product management")

Status.create(:name=>'Draft')
Status.create(:name=>'Applied')
Status.create(:name=>'Waitlisted')
Status.create(:name=>'Accepted')
Status.create(:name=>'Rejected')
