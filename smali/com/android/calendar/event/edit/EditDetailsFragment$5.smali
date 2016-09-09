.class Lcom/android/calendar/event/edit/EditDetailsFragment$5;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$5;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolledChange(Z)V
    .locals 2

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$5;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$5;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineElevation:I
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1200(Lcom/android/calendar/event/edit/EditDetailsFragment;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setElevation(F)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$5;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setElevation(F)V

    goto :goto_0
.end method
