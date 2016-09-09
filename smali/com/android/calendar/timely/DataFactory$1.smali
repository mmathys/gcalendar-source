.class Lcom/android/calendar/timely/DataFactory$1;
.super Lcom/android/calendar/timely/EventRangedQueryHandler;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/DataFactory;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/DataFactory;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/DataFactory;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/calendar/timely/DataFactory$1;->this$0:Lcom/android/calendar/timely/DataFactory;

    invoke-direct {p0, p2}, Lcom/android/calendar/timely/EventRangedQueryHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createStorage(I)Lcom/android/calendar/timely/RangedData$EventResults;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/android/calendar/timely/MonthData$MonthEventResults;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/MonthData$MonthEventResults;-><init>(I)V

    return-object v0
.end method

.method protected processResults(Lcom/android/calendar/timely/RangedData;Lcom/android/calendar/timely/RangedData$EventResults;)V
    .locals 1

    .prologue
    .line 79
    .line 80
    if-nez p2, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/DataFactory$1;->createStorage(I)Lcom/android/calendar/timely/RangedData$EventResults;

    move-result-object p2

    .line 90
    :cond_0
    instance-of v0, p1, Lcom/android/calendar/timely/MonthData;

    if-eqz v0, :cond_1

    .line 91
    check-cast p1, Lcom/android/calendar/timely/MonthData;

    .line 92
    invoke-virtual {p1, p2}, Lcom/android/calendar/timely/MonthData;->addEvents(Lcom/android/calendar/timely/RangedData$EventResults;)V

    .line 93
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory$1;->this$0:Lcom/android/calendar/timely/DataFactory;

    # getter for: Lcom/android/calendar/timely/DataFactory;->mDraftEvent:Lcom/android/calendar/timely/TimelineEvent;
    invoke-static {v0}, Lcom/android/calendar/timely/DataFactory;->access$000(Lcom/android/calendar/timely/DataFactory;)Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory$1;->this$0:Lcom/android/calendar/timely/DataFactory;

    .line 94
    # getter for: Lcom/android/calendar/timely/DataFactory;->mDraftEvent:Lcom/android/calendar/timely/TimelineEvent;
    invoke-static {v0}, Lcom/android/calendar/timely/DataFactory;->access$000(Lcom/android/calendar/timely/DataFactory;)Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineEvent;->getStartDay()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/MonthData;->containsDay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory$1;->this$0:Lcom/android/calendar/timely/DataFactory;

    # getter for: Lcom/android/calendar/timely/DataFactory;->mDraftEvent:Lcom/android/calendar/timely/TimelineEvent;
    invoke-static {v0}, Lcom/android/calendar/timely/DataFactory;->access$000(Lcom/android/calendar/timely/DataFactory;)Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/MonthData;->addEvent(Lcom/android/calendar/timely/TimelineItem;)V

    .line 98
    :cond_1
    return-void
.end method

.method protected bridge synthetic processResults(Lcom/android/calendar/timely/RangedData;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p2, Lcom/android/calendar/timely/RangedData$EventResults;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/DataFactory$1;->processResults(Lcom/android/calendar/timely/RangedData;Lcom/android/calendar/timely/RangedData$EventResults;)V

    return-void
.end method
