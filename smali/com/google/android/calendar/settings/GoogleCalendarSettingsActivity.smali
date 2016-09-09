.class public Lcom/google/android/calendar/settings/GoogleCalendarSettingsActivity;
.super Lcom/android/calendar/timely/settings/CalendarSettingsActivity;
.source "GoogleCalendarSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBirthdayPreferenceFragmentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCalendarPreferenceFragmentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/calendar/settings/GoogleCalendarPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getHolidayPreferenceFragmentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPrimaryBirthdayAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/calendar/extensions/BirthdayManager;->getBirthdayHolidayPrimaryAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/calendar/settings/GoogleCalendarSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 45
    sget v1, Lcom/android/calendar/R$menu;->settings_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/android/calendar/R$id;->help_info_menu_item:I

    if-ne v1, v2, :cond_0

    .line 52
    sget v1, Lcom/android/calendar/R$string;->settings_help_context:I

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/android/calendar/settings/GoogleCalendarSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 52
    invoke-static {p0, v1, v2}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->launchHelpAndFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 58
    invoke-super {p0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->onBackPressed()V

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
