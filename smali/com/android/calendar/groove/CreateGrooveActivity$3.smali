.class Lcom/android/calendar/groove/CreateGrooveActivity$3;
.super Landroid/os/AsyncTask;
.source "CreateGrooveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CreateGrooveActivity;->onConfirmContract()V
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
.field final synthetic this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

.field final synthetic val$accountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CreateGrooveActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    iput-object p2, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 357
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 364
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    new-instance v1, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-direct {v1}, Lcom/google/android/calendar/api/HabitFilterOptions;-><init>()V

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/api/HabitFilterOptions;->setActiveAfter(Ljava/lang/Long;)Lcom/google/android/calendar/api/HabitFilterOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->val$accountName:Ljava/lang/String;

    .line 366
    invoke-virtual {v1, v2}, Lcom/google/android/calendar/api/HabitFilterOptions;->setAccountName(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitFilterOptions;

    move-result-object v1

    .line 365
    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitClient;->count(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitClient$GenericResult;

    .line 367
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$GenericResult;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 368
    :goto_0
    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->val$accountName:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    .line 372
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v2

    new-instance v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    invoke-direct {v3}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;-><init>()V

    .line 374
    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->setTimezoneId(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    move-result-object v1

    .line 373
    invoke-virtual {v2, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromClient(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/os/Bundle;

    .line 376
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 357
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 381
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;
    invoke-static {v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$200(Lcom/android/calendar/groove/CreateGrooveActivity;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitClient;->create(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    const/4 v2, 0x1

    # setter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mConfirmedScheduling:Z
    invoke-static {v1, v2}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$302(Lcom/android/calendar/groove/CreateGrooveActivity;Z)Z

    .line 383
    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;
    invoke-static {v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$400(Lcom/android/calendar/groove/CreateGrooveActivity;)Lcom/android/calendar/groove/GrooveScheduleFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->setChangesEnabled(Z)V

    .line 384
    new-instance v1, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;-><init>(Lcom/android/calendar/groove/CreateGrooveActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 420
    return-void
.end method
