.class Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;
.super Landroid/os/AsyncTask;
.source "TimelyPrefService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/TimelyPrefService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefReadForAccountAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;->this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyPrefService;Lcom/google/android/calendar/timely/settings/TimelyPrefService$1;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;-><init>(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    aget-object v5, p1, v6

    .line 73
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    .line 74
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;->this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->access$200(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    # getter for: Lcom/google/android/calendar/timely/settings/TimelyPrefService;->COLOR_PREF_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->access$100()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "accountName = ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 80
    if-nez v2, :cond_0

    .line 81
    # getter for: Lcom/google/android/calendar/timely/settings/TimelyPrefService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Null cursor for %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;

    invoke-direct {v0, v2}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_1
    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;->this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->access$400(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;->color:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;->onPostExecute(Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;)V

    return-void
.end method
