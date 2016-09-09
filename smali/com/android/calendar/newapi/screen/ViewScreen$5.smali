.class Lcom/android/calendar/newapi/screen/ViewScreen$5;
.super Ljava/lang/Object;
.source "ViewScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreen;->adjustScrollViewBounds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreen;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreen;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreen$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreen;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->access$200(Lcom/android/calendar/newapi/screen/ViewScreen;)Lcom/android/calendar/newapi/commandbar/CommandBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getHeight()I

    move-result v1

    .line 369
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    .line 370
    # getter for: Lcom/android/calendar/newapi/screen/ViewScreen;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->access$300(Lcom/android/calendar/newapi/screen/ViewScreen;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 371
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreen$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreen;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/android/calendar/newapi/screen/ViewScreen;->access$300(Lcom/android/calendar/newapi/screen/ViewScreen;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 372
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 373
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreen;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->access$300(Lcom/android/calendar/newapi/screen/ViewScreen;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->requestLayout()V

    .line 375
    const/4 v0, 0x0

    return v0
.end method
