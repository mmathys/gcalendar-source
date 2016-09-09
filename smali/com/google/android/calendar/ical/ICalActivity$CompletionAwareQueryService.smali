.class Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;
.super Lcom/android/calendar/AsyncQueryService;
.source "ICalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompletionAwareQueryService"
.end annotation


# instance fields
.field private completionToken:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/ical/ICalActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->this$0:Lcom/google/android/calendar/ical/ICalActivity;

    .line 59
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    .line 60
    return-void
.end method


# virtual methods
.method protected onAllQueriesCompleted()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->this$0:Lcom/google/android/calendar/ical/ICalActivity;

    invoke-virtual {v0}, Lcom/google/android/calendar/ical/ICalActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_LOCAL_EVENT_INFO_PROVIDER_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 124
    instance-of v1, v0, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    invoke-interface {v0}, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;->refreshLocalEventInfo()V

    .line 127
    :cond_0
    return-void
.end method

.method protected onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->onAllQueriesCompleted()V

    .line 118
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/AsyncQueryService;->onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    .line 119
    return-void
.end method

.method public scheduleOnCompletionHandler(J)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->cancelOperation(I)I

    .line 68
    :cond_0
    invoke-static {}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->getNextToken()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    .line 69
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "com.android.calendar"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v6, 0x64

    add-long/2addr v6, p1

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;J)V

    .line 71
    return-void
.end method

.method public startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-super/range {p0 .. p7}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;J)V

    .line 78
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->completionToken:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0, p6, p7}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->scheduleOnCompletionHandler(J)V

    .line 81
    :cond_1
    return-void
.end method

.method public startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 86
    invoke-super/range {p0 .. p7}, Lcom/android/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 87
    invoke-virtual {p0, p6, p7}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->scheduleOnCompletionHandler(J)V

    .line 88
    return-void
.end method

.method public startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V
    .locals 1

    .prologue
    .line 93
    invoke-super/range {p0 .. p6}, Lcom/android/calendar/AsyncQueryService;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    .line 94
    invoke-virtual {p0, p5, p6}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->scheduleOnCompletionHandler(J)V

    .line 95
    return-void
.end method

.method public startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 108
    invoke-super/range {p0 .. p8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 109
    invoke-virtual {p0, p7, p8}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->scheduleOnCompletionHandler(J)V

    .line 110
    return-void
.end method
