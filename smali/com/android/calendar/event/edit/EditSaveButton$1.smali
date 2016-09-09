.class Lcom/android/calendar/event/edit/EditSaveButton$1;
.super Ljava/lang/Object;
.source "EditSaveButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditSaveButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditSaveButton;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditSaveButton;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditSaveButton$1;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$1;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    # getter for: Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditSaveButton;->access$000(Lcom/android/calendar/event/edit/EditSaveButton;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$1;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    # getter for: Lcom/android/calendar/event/edit/EditSaveButton;->mSaveListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditSaveButton;->access$100(Lcom/android/calendar/event/edit/EditSaveButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$1;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    # getter for: Lcom/android/calendar/event/edit/EditSaveButton;->mSaveListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditSaveButton;->access$100(Lcom/android/calendar/event/edit/EditSaveButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditSaveButton$1;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$1;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    # getter for: Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditSaveButton;->access$000(Lcom/android/calendar/event/edit/EditSaveButton;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$1;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    # getter for: Lcom/android/calendar/event/edit/EditSaveButton;->mDoneListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditSaveButton;->access$200(Lcom/android/calendar/event/edit/EditSaveButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$1;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    # getter for: Lcom/android/calendar/event/edit/EditSaveButton;->mDoneListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditSaveButton;->access$200(Lcom/android/calendar/event/edit/EditSaveButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditSaveButton$1;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
