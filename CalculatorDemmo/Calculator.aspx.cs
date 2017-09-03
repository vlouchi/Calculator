using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CalculatorDemmo
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        static double a,c,result;
        static char b;


       

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
        }

        protected void zero_Click(object sender, EventArgs e)
        {
          
           displayBox.Text = displayBox.Text + zero.Text;
            
        }


        protected void clear_Click(object sender, EventArgs e)
        {
            displayBox.Text = "";
            notifError.Text = "";
        }

        
        protected void plus_Click(object sender, EventArgs e)
        {
            
            String word = displayBox.Text;
            if (word.Length < 1)
            {
                return ;
            }
            if (word[displayBox.Text.Length - 1] == '+' || displayBox.Text[displayBox.Text.Length - 1] == '-' ||
                displayBox.Text[displayBox.Text.Length - 1] == '*' ||
                displayBox.Text[displayBox.Text.Length - 1] == '/')
            {
                displayBox.Text = displayBox.Text.Substring(0, word.Length - 1) + "+";
            }
            else
            {
                displayBox.Text = displayBox.Text + plus.Text;
            }

        }

        protected void three_Click(object sender, EventArgs e)
        {
            displayBox.Text = displayBox.Text + three.Text;
        }

        protected void two_Click(object sender, EventArgs e)
        {
                displayBox.Text = displayBox.Text + two.Text;
        }

        protected void one_Click(object sender, EventArgs e)
        {
                displayBox.Text = displayBox.Text + one.Text;
        }

        protected void four_Click(object sender, EventArgs e)
        {
                displayBox.Text = displayBox.Text + four.Text;
        }

        protected void five_Click(object sender, EventArgs e)
        {
                displayBox.Text = displayBox.Text + five.Text;
        }

        protected void six_Click(object sender, EventArgs e)
        {
           
                displayBox.Text = displayBox.Text + six.Text;
           
        }

        protected void minus_Click(object sender, EventArgs e)
        {
            //String word = displayBox.Text;
            //if (word.Length == 1 && word[0] == '-')
            //{
            //    return;
            //}

            //if (word.Length > 1)
            //{
            //    if (word[displayBox.Text.Length - 1] == '+' || displayBox.Text[displayBox.Text.Length - 1] == '-' ||
            //        displayBox.Text[displayBox.Text.Length - 1] == '*' ||
            //        displayBox.Text[displayBox.Text.Length - 1] == '/')
            //    {
            //        displayBox.Text = displayBox.Text.Substring(0, word.Length - 1) + "-";
            //    }

            //}
            displayBox.Text = displayBox.Text + minus.Text;



        }

        protected void seven_Click(object sender, EventArgs e)
        {
            
                displayBox.Text = displayBox.Text + seven.Text;
            
        }

        protected void eight_Click(object sender, EventArgs e)
        {
            
                displayBox.Text = displayBox.Text + eight.Text;
            
        }

        protected void nine_Click(object sender, EventArgs e)
        {
            
                displayBox.Text = displayBox.Text + nine.Text;
            
        }

        protected void times_Click(object sender, EventArgs e)
        {
            
            String word = displayBox.Text;
            if (word.Length <1)
            {
                return;
            }
            if (word[displayBox.Text.Length - 1] == '+' || displayBox.Text[displayBox.Text.Length - 1] == '-' ||
                displayBox.Text[displayBox.Text.Length - 1] == '*' ||
                displayBox.Text[displayBox.Text.Length - 1] == '/')
            {
                displayBox.Text = displayBox.Text.Substring(0, word.Length - 1) + "*";
            }
            else
            {
                displayBox.Text = displayBox.Text + times.Text;
            }
        }

        protected void coma_Click(object sender, EventArgs e)
        {
            displayBox.Text = displayBox.Text + coma.Text;
        }

        


        protected void divide_Click(object sender, EventArgs e)
        {
            String word = displayBox.Text;
            if (word.Length < 1)
            {
                return;
            }

            if (word[displayBox.Text.Length - 1] == '+' || displayBox.Text[displayBox.Text.Length - 1] == '-' ||
                displayBox.Text[displayBox.Text.Length - 1] == '*' ||
                displayBox.Text[displayBox.Text.Length - 1] == '/')
            {
                displayBox.Text = displayBox.Text.Substring(0, word.Length - 1) + "/";
            }
            else
            {
                displayBox.Text = displayBox.Text + divide.Text;
            }
            
        }
        
       
        protected void equal_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable table = new DataTable();
                table.Columns.Add("expression", typeof(string), displayBox.Text);
                DataRow row = table.NewRow();
                table.Rows.Add(row);
                result = double.Parse((string)row["expression"]);

                displayBox.Text = Convert.ToString(result);
            }
            catch (Exception exception)
            {
                notifError.Text="ERROR";
                throw;
            }
           

        }

        

    }
}