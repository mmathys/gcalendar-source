.class public Lcom/android/calendar/timely/ChipRecycler;
.super Lcom/android/calendar/timely/Recycler;
.source "ChipRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;,
        Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/Recycler",
        "<",
        "Lcom/android/calendar/timely/TimelyChip;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerManager;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerManager;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/Recycler;-><init>(Lcom/android/calendar/timely/Recycler$RecyclerManager;I)V

    .line 30
    return-void
.end method
