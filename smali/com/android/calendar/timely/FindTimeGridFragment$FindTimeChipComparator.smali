.class Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChipComparator;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindTimeChipComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeGridFragment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChipComparator;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment;Lcom/android/calendar/timely/FindTimeGridFragment$1;)V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChipComparator;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;)I
    .locals 2

    .prologue
    .line 869
    iget-object v0, p1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v0

    iget-object v1, p2, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    .line 870
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 871
    iget-object v0, p1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v0

    iget-object v1, p2, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    .line 872
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v1

    sub-int/2addr v0, v1

    .line 880
    :goto_0
    return v0

    .line 874
    :cond_0
    iget v0, p1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->column:I

    iget v1, p2, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->column:I

    if-eq v0, v1, :cond_1

    .line 875
    iget v0, p1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->column:I

    iget v1, p2, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->column:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChipComparator;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 878
    iget-object v0, p2, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v0

    iget-object v1, p1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 880
    :cond_2
    iget-object v0, p1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v0

    iget-object v1, p2, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 866
    check-cast p1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;

    check-cast p2, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChipComparator;->compare(Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;)I

    move-result v0

    return v0
.end method
