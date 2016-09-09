.class final Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;
.super Ljava/lang/Object;
.source "ArpTaskLoaderUtils.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ArpTaskLoaderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/calendar/task/ArpExtendedTaskSetup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItem:Lcom/android/calendar/timely/TimelineItem;

.field private final mListener:Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;

.field private final mModel:Lcom/android/calendar/event/CalendarEventModel;

.field private final mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    .line 70
    iput-object p3, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 71
    iput-object p4, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 72
    iput-object p5, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mListener:Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;

    .line 73
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/calendar/task/ArpExtendedTaskSetup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "account_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "task_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;-><init>(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/calendar/task/ArpExtendedTaskSetup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/calendar/task/ArpExtendedTaskSetup;",
            ">;",
            "Lcom/google/android/calendar/task/ArpExtendedTaskSetup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getInfoUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, v1, v2, p2}, Lcom/google/android/calendar/task/TaskUtils;->setModel(Landroid/content/Context;Landroid/net/Uri;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/task/TaskSetup;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mListener:Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mListener:Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;

    invoke-interface {v0}, Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;->onFailed()V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mListener:Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->mListener:Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;

    new-instance v1, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {v1, p2}, Lcom/google/android/calendar/task/ArpTimelineTask;-><init>(Lcom/google/android/calendar/task/ArpTaskSetup;)V

    invoke-interface {v0, p1, v1}, Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;->onCompleted(Landroid/content/Loader;Lcom/android/calendar/task/TimelineTask;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p2, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/calendar/task/ArpExtendedTaskSetup;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/calendar/task/ArpExtendedTaskSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method
