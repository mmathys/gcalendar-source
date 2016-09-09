.class public Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelineAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/TimelineAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;->this$0:Lcom/android/calendar/timely/TimelineAdapter;

    .line 59
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    return-void
.end method
