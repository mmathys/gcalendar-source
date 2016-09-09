.class Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$2;
.super Ljava/lang/Object;
.source "OverflowMenuFallback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->initOverflowButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$2;->this$0:Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$2;->this$0:Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;

    # getter for: Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mOverflowMenu:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->access$100(Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 65
    return-void
.end method
