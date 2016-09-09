.class public Lcom/google/android/calendar/settings/GoogleCalendarPreferenceFragment;
.super Lcom/android/calendar/timely/settings/CalendarPreferences;
.source "GoogleCalendarPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/CalendarPreferences;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/settings/GoogleCalendarPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 21
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 25
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 26
    sget v0, Lcom/android/calendar/R$menu;->calendar_settings_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 27
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 31
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->calendar_setting_help_menu_item:I

    if-ne v0, v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/google/android/calendar/settings/GoogleCalendarPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->calendars_help_context:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/settings/GoogleCalendarPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->launchHelpAndFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
