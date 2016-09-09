.class Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;
.super Landroid/os/AsyncTask;
.source "TimelyHolidayPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->persistHolidaySelection(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$changes:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;Ljava/util/Map;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->val$changes:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 324
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 327
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->val$changes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-static {v1}, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->getEmailOrThrow(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    if-eqz v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    .line 332
    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->access$400(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->val$account:Landroid/accounts/Account;

    .line 331
    invoke-static {v0, v3, v1, v4}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->subscribeCalendar(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->access$400(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->val$account:Landroid/accounts/Account;

    invoke-static {v0, v3, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->unsubscribeCalendar(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    return-object v4
.end method
