.class Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;
.super Lcom/google/android/calendar/task/BundleTaskResults;
.source "ArpWidgetTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ArpWidgetTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskResults"
.end annotation


# instance fields
.field protected final mFinalStorage:Lcom/android/calendar/timely/RangedData$EventResults;

.field final synthetic this$0:Lcom/google/android/calendar/task/ArpWidgetTaskLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/task/ArpWidgetTaskLoader;Lcom/android/calendar/timely/RangedData$EventResults;II)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;->this$0:Lcom/google/android/calendar/task/ArpWidgetTaskLoader;

    .line 96
    invoke-direct {p0, p3, p4}, Lcom/google/android/calendar/task/BundleTaskResults;-><init>(II)V

    .line 97
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;->mFinalStorage:Lcom/android/calendar/timely/RangedData$EventResults;

    .line 98
    return-void
.end method


# virtual methods
.method public finalizeStorage()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;->this$0:Lcom/google/android/calendar/task/ArpWidgetTaskLoader;

    # getter for: Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->access$000(Lcom/google/android/calendar/task/ArpWidgetTaskLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 108
    invoke-super {p0}, Lcom/google/android/calendar/task/BundleTaskResults;->finalizeStorage()V

    .line 110
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/task/TimelineTaskType;

    .line 113
    instance-of v1, v0, Lcom/android/calendar/task/TimelineTaskBundle;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 114
    check-cast v1, Lcom/android/calendar/task/TimelineTaskBundle;

    invoke-virtual {v1, v2}, Lcom/android/calendar/task/TimelineTaskBundle;->updateTitles(Landroid/content/res/Resources;)V

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;->mFinalStorage:Lcom/android/calendar/timely/RangedData$EventResults;

    invoke-interface {v1, v0}, Lcom/android/calendar/timely/RangedData$EventResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method
