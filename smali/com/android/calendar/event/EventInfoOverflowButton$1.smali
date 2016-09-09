.class Lcom/android/calendar/event/EventInfoOverflowButton$1;
.super Ljava/lang/Object;
.source "EventInfoOverflowButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoOverflowButton;->initOverflowButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoOverflowButton;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoOverflowButton;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoOverflowButton$1;->this$0:Lcom/android/calendar/event/EventInfoOverflowButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton$1;->this$0:Lcom/android/calendar/event/EventInfoOverflowButton;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->access$000(Lcom/android/calendar/event/EventInfoOverflowButton;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 65
    return-void
.end method
