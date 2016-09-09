.class Lcom/android/datetimepicker/time/RadialPickerLayout$1;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/time/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/RadialPickerLayout;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$1;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$1;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;
    invoke-static {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->access$100(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/AmPmCirclesView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$1;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I
    invoke-static {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->access$000(Lcom/android/datetimepicker/time/RadialPickerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 598
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$1;->this$0:Lcom/android/datetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;
    invoke-static {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->access$100(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/AmPmCirclesView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 599
    return-void
.end method
