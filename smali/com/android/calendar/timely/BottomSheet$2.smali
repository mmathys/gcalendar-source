.class Lcom/android/calendar/timely/BottomSheet$2;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/BottomSheet;->hide(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/BottomSheet;

.field final synthetic val$accepted:Z

.field final synthetic val$triggerAction:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/BottomSheet;ZZ)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/calendar/timely/BottomSheet$2;->this$0:Lcom/android/calendar/timely/BottomSheet;

    iput-boolean p2, p0, Lcom/android/calendar/timely/BottomSheet$2;->val$triggerAction:Z

    iput-boolean p3, p0, Lcom/android/calendar/timely/BottomSheet$2;->val$accepted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$2;->this$0:Lcom/android/calendar/timely/BottomSheet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/BottomSheet;->setVisibility(I)V

    .line 157
    iget-boolean v0, p0, Lcom/android/calendar/timely/BottomSheet$2;->val$triggerAction:Z

    if-eqz v0, :cond_0

    .line 158
    iget-boolean v0, p0, Lcom/android/calendar/timely/BottomSheet$2;->val$accepted:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$2;->this$0:Lcom/android/calendar/timely/BottomSheet;

    invoke-virtual {v0}, Lcom/android/calendar/timely/BottomSheet;->onAccepted()V

    .line 164
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/timely/BottomSheet;->sCurrentTag:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$2;->this$0:Lcom/android/calendar/timely/BottomSheet;

    # getter for: Lcom/android/calendar/timely/BottomSheet;->mMainLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/timely/BottomSheet;->access$000(Lcom/android/calendar/timely/BottomSheet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 166
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$2;->this$0:Lcom/android/calendar/timely/BottomSheet;

    # getter for: Lcom/android/calendar/timely/BottomSheet;->mFadeLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/timely/BottomSheet;->access$100(Lcom/android/calendar/timely/BottomSheet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$2;->this$0:Lcom/android/calendar/timely/BottomSheet;

    # getter for: Lcom/android/calendar/timely/BottomSheet;->mFadeLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/timely/BottomSheet;->access$100(Lcom/android/calendar/timely/BottomSheet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 169
    :cond_1
    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$2;->this$0:Lcom/android/calendar/timely/BottomSheet;

    invoke-virtual {v0}, Lcom/android/calendar/timely/BottomSheet;->onDismissed()V

    goto :goto_0
.end method
