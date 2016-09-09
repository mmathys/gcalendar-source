.class public Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;
.super Ljava/lang/Object;
.source "EventComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final mDifferentFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInconsistencyClass:Ljava/lang/String;

.field private final mShouldReport:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mDifferentFields:Ljava/util/List;

    .line 31
    const-string v0, "Unclassified"

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mInconsistencyClass:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mShouldReport:Z

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mDifferentFields:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mInconsistencyClass:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mShouldReport:Z

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ZLcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public differentFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mDifferentFields:Ljava/util/List;

    return-object v0
.end method

.method public inconsistencyClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mInconsistencyClass:Ljava/lang/String;

    return-object v0
.end method

.method public isConsistent()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mDifferentFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mShouldReport:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldReport()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;->mShouldReport:Z

    return v0
.end method
