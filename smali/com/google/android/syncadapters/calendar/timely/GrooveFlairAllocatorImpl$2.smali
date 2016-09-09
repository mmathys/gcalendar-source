.class final Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$2;
.super Landroid/util/SparseArray;
.source "GrooveFlairAllocatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 45
    const/16 v0, 0x100

    const-string v1, "groove_exercise"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$2;->append(ILjava/lang/Object;)V

    .line 46
    const/16 v0, 0x200

    const-string v1, "groove_skill"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$2;->append(ILjava/lang/Object;)V

    .line 47
    const/16 v0, 0x300

    const-string v1, "groove_friends"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$2;->append(ILjava/lang/Object;)V

    .line 48
    const/16 v0, 0x400

    const-string v1, "groove_metime"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$2;->append(ILjava/lang/Object;)V

    .line 49
    const/16 v0, 0x500

    const-string v1, "groove_organize"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$2;->append(ILjava/lang/Object;)V

    .line 50
    return-void
.end method
