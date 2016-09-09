.class Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$1;
.super Ljava/lang/Object;
.source "ViewScreenOpenCloseHelper.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->setupAnimationView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$1;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$1;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    # setter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTopSystemWindowInset:I
    invoke-static {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$002(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;I)I

    .line 114
    return-object p2
.end method
