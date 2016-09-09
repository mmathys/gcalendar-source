.class public Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
.super Ljava/lang/Object;
.source "TimelineTaskType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/task/TimelineTaskType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTasksDoneResult"
.end annotation


# instance fields
.field public final mNotDoneMovedToMillis:Ljava/lang/Long;

.field public final mNotDoneMovedToMillisList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mSuccess:Z

    .line 44
    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mNotDoneMovedToMillisList:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mNotDoneMovedToMillis:Ljava/lang/Long;

    .line 46
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mSuccess:Z

    .line 37
    iput-object p2, p0, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mNotDoneMovedToMillisList:Ljava/util/List;

    .line 38
    if-nez p2, :cond_0

    .line 39
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mNotDoneMovedToMillis:Ljava/lang/Long;

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method
