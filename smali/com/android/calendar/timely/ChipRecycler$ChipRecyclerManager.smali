.class Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerManager;
.super Ljava/lang/Object;
.source "ChipRecycler.java"

# interfaces
.implements Lcom/android/calendar/timely/Recycler$RecyclerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/ChipRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChipRecyclerManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/timely/Recycler$RecyclerManager",
        "<",
        "Lcom/android/calendar/timely/TimelyChip;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public clean(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->clearItem()V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/TimelyChip;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    .line 56
    return-void
.end method

.method public bridge synthetic clean(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerManager;->clean(Lcom/android/calendar/timely/TimelyChip;)V

    return-void
.end method

.method public createObject()Lcom/android/calendar/timely/TimelyChip;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/TimelyChip;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerManager;->createObject()Lcom/android/calendar/timely/TimelyChip;

    move-result-object v0

    return-object v0
.end method

.method public prepareToReuse(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/TimelyChip;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public bridge synthetic prepareToReuse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerManager;->prepareToReuse(Lcom/android/calendar/timely/TimelyChip;)V

    return-void
.end method
