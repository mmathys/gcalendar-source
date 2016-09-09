.class Lcom/android/calendar/newapi/screen/ViewScreenController$3;
.super Ljava/lang/Object;
.source "ViewScreenController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreenController;->onViewUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreenController;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenController;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$3;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$3;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenController;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->access$100(Lcom/android/calendar/newapi/screen/ViewScreenController;)Lcom/android/calendar/newapi/screen/ViewScreen;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 558
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$3;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onViewUpdated()V

    .line 559
    return-void
.end method
