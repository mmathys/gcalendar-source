.class Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$1;
.super Ljava/lang/Object;
.source "OverflowMenuFallback.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->initOverflowMenu(I)V
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
    .line 45
    iput-object p1, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$1;->this$0:Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$1;->this$0:Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;

    # getter for: Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mCallback:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;
    invoke-static {v0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->access$000(Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;)Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback$1;->this$0:Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;

    # getter for: Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->mCallback:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;
    invoke-static {v0}, Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;->access$000(Lcom/android/calendar/newapi/overflow/OverflowMenuFallback;)Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;->onOverflowItemClicked(Landroid/view/MenuItem;)V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
