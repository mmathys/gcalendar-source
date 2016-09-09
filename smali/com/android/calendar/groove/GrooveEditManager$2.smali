.class Lcom/android/calendar/groove/GrooveEditManager$2;
.super Ljava/lang/Object;
.source "GrooveEditManager.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveEditManager;->getGrooveCallback()Landroid/app/LoaderManager$LoaderCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/calendar/groove/TimelineGroove;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveEditManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveEditManager;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveEditManager$2;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    new-instance v0, Lcom/android/calendar/groove/GrooveLoader;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager$2;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveEditManager;->access$2600(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager$2;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveEditManager;->access$900(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/groove/TimelineGroove;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/groove/GrooveLoader;-><init>(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/groove/TimelineGroove;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ")V"
        }
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$2;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$2700(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iput-object p2, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 673
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$2;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$2800(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iput-object p2, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 674
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$2;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$2900(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/calendar/groove/TimelineGroove;->addPreinstanceReminderToCEM(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 675
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$2;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$3000(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/calendar/groove/TimelineGroove;->addPreinstanceReminderToCEM(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 676
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 677
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager$2;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveEditManager;->access$3100(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 678
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager$2;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # invokes: Lcom/android/calendar/groove/GrooveEditManager;->onQueryComplete(I)V
    invoke-static {v1, v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$3200(Lcom/android/calendar/groove/GrooveEditManager;I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 663
    check-cast p2, Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/groove/GrooveEditManager$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/groove/TimelineGroove;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    return-void
.end method
