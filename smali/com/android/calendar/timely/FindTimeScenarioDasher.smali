.class Lcom/android/calendar/timely/FindTimeScenarioDasher;
.super Ljava/lang/Object;
.source "FindTimeScenarioDasher.java"

# interfaces
.implements Lcom/android/calendar/timely/FindTimeScenario;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    const-string v2, "com.google"

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->getQualityOfService()I

    move-result v2

    .line 36
    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isEnabled(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {p2}, Lcom/android/calendar/timely/FindTimeUtil;->getAccount(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Landroid/accounts/Account;

    move-result-object v1

    .line 43
    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/timely/FindTimeScenarioDasher;->isEnabled(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/android/calendar/timely/FindTimeUtil;->isCalendarTypeSupported(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
