class UserCode:
    def __init__(self):
        #: Tune gains
        self.Kp = 50
        self.Kd = 20
        self.prevErr = 0.0
            
    def compute_control_command(self, t, dt, x_measured, x_desired):
        '''
        :param t: time since simulation start
        :param dt: time since last call to compute_control_command
        :param x_measured: measured position (scalar)
        :param x_desired: desired position (scalar)
        :return - control command u
        '''
        #: implement PD controller
        u = 0.0
        
        # Calculating the error in response for proportional and derivative controls
        presErr = x_desired - x_measured            
        kdErr = (presErr - self.prevErr)/dt
        
        # Calculating the Proportional and Derivative Controls
        p = self.Kp * presErr
        d = self.Kd * kdErr
        
        # Calculating the full PD controller
        u = p + d
        
        # Updating the error for each time step
        self.prevErr = presErr        
        
        return u