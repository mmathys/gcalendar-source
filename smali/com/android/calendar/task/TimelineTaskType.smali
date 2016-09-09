.class public interface abstract Lcom/android/calendar/task/TimelineTaskType;
.super Ljava/lang/Object;
.source "TimelineTaskType.java"

# interfaces
.implements Lcom/android/calendar/timely/TimelineItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
    }
.end annotation


# static fields
.field public static final DATE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/task/TimelineTaskType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/calendar/task/TimelineTaskType$1;

    invoke-direct {v0}, Lcom/android/calendar/task/TimelineTaskType$1;-><init>()V

    sput-object v0, Lcom/android/calendar/task/TimelineTaskType;->DATE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract isDone()Z
.end method

.method public abstract setDone(Z)V
.end method

.method public abstract updateTaskDone(Landroid/content/Context;Z)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
.end method
