.class public Lcom/android/calendar/timely/MonthData$MonthEventResults;
.super Ljava/lang/Object;
.source "MonthData.java"

# interfaces
.implements Lcom/android/calendar/timely/RangedData$EventResults;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/MonthData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonthEventResults"
.end annotation


# instance fields
.field public final mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData$MonthEventResults;->mEvents:Ljava/util/ArrayList;

    .line 137
    return-void
.end method


# virtual methods
.method public addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData$MonthEventResults;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method
