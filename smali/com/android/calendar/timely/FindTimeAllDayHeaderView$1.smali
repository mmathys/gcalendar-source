.class Lcom/android/calendar/timely/FindTimeAllDayHeaderView$1;
.super Ljava/lang/Object;
.source "FindTimeAllDayHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->onUpdate(Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeAllDayHeaderView;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView$1;->this$0:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView$1;->this$0:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView$1;->this$0:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->access$000(Lcom/android/calendar/timely/FindTimeAllDayHeaderView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->setExpandedState(Z)V

    .line 176
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
