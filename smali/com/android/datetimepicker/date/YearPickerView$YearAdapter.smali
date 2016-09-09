.class Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;
.super Landroid/widget/ArrayAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/date/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YearAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/date/YearPickerView;


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/date/YearPickerView;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/android/datetimepicker/date/YearPickerView;

    .line 106
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 111
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    .line 113
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 114
    # invokes: Lcom/android/datetimepicker/date/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I
    invoke-static {v0}, Lcom/android/datetimepicker/date/YearPickerView;->access$000(Landroid/widget/TextView;)I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/android/datetimepicker/date/YearPickerView;

    # getter for: Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;
    invoke-static {v2}, Lcom/android/datetimepicker/date/YearPickerView;->access$100(Lcom/android/datetimepicker/date/YearPickerView;)Lcom/android/datetimepicker/date/DatePickerController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v2

    iget v2, v2, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    .line 116
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 117
    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/android/datetimepicker/date/YearPickerView;

    # setter for: Lcom/android/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;
    invoke-static {v1, v0}, Lcom/android/datetimepicker/date/YearPickerView;->access$202(Lcom/android/datetimepicker/date/YearPickerView;Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;)Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    .line 120
    :cond_0
    return-object v0

    .line 115
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
