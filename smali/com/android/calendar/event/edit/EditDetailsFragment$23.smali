.class Lcom/android/calendar/event/edit/EditDetailsFragment$23;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->scrollToTop()V
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
    .line 2036
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$23;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2039
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$23;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditorScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/calendar/editor/EditorScrollView;->scrollTo(II)V

    .line 2040
    return-void
.end method
