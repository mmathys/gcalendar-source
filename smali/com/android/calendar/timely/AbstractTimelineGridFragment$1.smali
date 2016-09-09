.class Lcom/android/calendar/timely/AbstractTimelineGridFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AbstractTimelineGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$1;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$1;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-virtual {v0, p2}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onScrollStateChanged(I)V

    .line 144
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$1;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-virtual {v0, p2, p3}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onScrolled(II)V

    .line 149
    return-void
.end method
