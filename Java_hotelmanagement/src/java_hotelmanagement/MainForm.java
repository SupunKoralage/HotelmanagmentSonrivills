/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java_hotelmanagement;

import javax.swing.JFrame;

/**
 *
 * @author DJ LEN Lasitha
 */
public class MainForm extends javax.swing.JFrame {

    /**
     * Creates new form MainForm
     */
    public MainForm() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        jMenuItemClients = new javax.swing.JMenuItem();
        jSeparator1 = new javax.swing.JPopupMenu.Separator();
        jMenuItemReservation = new javax.swing.JMenuItem();
        jSeparator2 = new javax.swing.JPopupMenu.Separator();
        jMenuItemRoom = new javax.swing.JMenuItem();
        jSeparator3 = new javax.swing.JPopupMenu.Separator();
        jMenuItemOther = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(null);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Welcome to the Sonrivilla Resort");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(100, 0, 610, 110);

        jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\DJ LEN Lasitha\\Downloads\\106567147.jpg")); // NOI18N
        jPanel1.add(jLabel2);
        jLabel2.setBounds(0, 0, 790, 420);

        jMenuBar1.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N

        jMenu1.setText("Management Menu");
        jMenu1.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N

        jMenuItemClients.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jMenuItemClients.setText("Clients");
        jMenuItemClients.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItemClientsActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItemClients);
        jMenu1.add(jSeparator1);

        jMenuItemReservation.setText("Reservation");
        jMenuItemReservation.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItemReservationActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItemReservation);
        jMenu1.add(jSeparator2);

        jMenuItemRoom.setText("Room");
        jMenuItemRoom.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItemRoomActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItemRoom);
        jMenu1.add(jSeparator3);

        jMenuItemOther.setText("Other services");
        jMenuItemOther.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItemOtherActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItemOther);

        jMenuBar1.add(jMenu1);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 787, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 421, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jMenuItemClientsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItemClientsActionPerformed
        // open ClientForm
        ClientForm clientsform=new ClientForm();
        clientsform.setVisible(true);
        clientsform.pack();
        clientsform.setLocationRelativeTo(null);
        clientsform.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        
    }//GEN-LAST:event_jMenuItemClientsActionPerformed

    private void jMenuItemReservationActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItemReservationActionPerformed
        // open ReservationForm
        ReservationForm reservationform=new ReservationForm();
        reservationform.setVisible(true);
        reservationform.pack();
        reservationform.setLocationRelativeTo(null);
        reservationform.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }//GEN-LAST:event_jMenuItemReservationActionPerformed

    private void jMenuItemRoomActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItemRoomActionPerformed
        // open RoomForm
        RoomForm roomform=new RoomForm();
        roomform.setVisible(true);
        roomform.pack();
        roomform.setLocationRelativeTo(null);
        roomform.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }//GEN-LAST:event_jMenuItemRoomActionPerformed

    private void jMenuItemOtherActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItemOtherActionPerformed
        // open OtherServiceForm
        OtherServiceForm otherserviceform=new OtherServiceForm();
        otherserviceform.setVisible(true);
        otherserviceform.pack();
        otherserviceform.setLocationRelativeTo(null);
        otherserviceform.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }//GEN-LAST:event_jMenuItemOtherActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(MainForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MainForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MainForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MainForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MainForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem jMenuItemClients;
    private javax.swing.JMenuItem jMenuItemOther;
    private javax.swing.JMenuItem jMenuItemReservation;
    private javax.swing.JMenuItem jMenuItemRoom;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPopupMenu.Separator jSeparator1;
    private javax.swing.JPopupMenu.Separator jSeparator2;
    private javax.swing.JPopupMenu.Separator jSeparator3;
    // End of variables declaration//GEN-END:variables
}