.class Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;
.super Landroid/os/AsyncTask;
.source "TimelyPrefService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/TimelyPrefService;->setHolidaysColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V
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
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;

.field final synthetic val$color:Lcom/google/calendar/v2/client/service/api/common/Color;

.field final synthetic val$primaryAccount:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyPrefService;Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;->this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;

    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;->val$primaryAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;->val$color:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;->this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->access$500(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;->val$primaryAccount:Landroid/accounts/Account;

    new-instance v2, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    invoke-direct {v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;->val$color:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 142
    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/api/common/Color;->toInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->setHolidayColor(I)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromClient(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/os/Bundle;

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method
