.class final Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;
.super Ljava/lang/Object;
.source "EventComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassificationResult"
.end annotation


# instance fields
.field public mBelongsToClass:Z

.field public mShouldReport:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;->mBelongsToClass:Z

    .line 152
    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;->mShouldReport:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;-><init>()V

    return-void
.end method
