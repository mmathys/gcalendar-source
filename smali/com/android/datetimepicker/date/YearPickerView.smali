.class public Lcom/android/datetimepicker/date/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;

.field private mChildSize:I

.field private final mController:Lcom/android/datetimepicker/date/DatePickerController;

.field private mSelectedView:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

.field private mViewSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/datetimepicker/date/DatePickerController;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    .line 55
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v0, p0}, Lcom/android/datetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V

    .line 56
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/YearPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    sget v1, Lcom/android/datetimepicker/R$dimen;->date_picker_view_animator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/YearPickerView;->mViewSize:I

    .line 61
    sget v1, Lcom/android/datetimepicker/R$dimen;->year_label_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mChildSize:I

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/YearPickerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 63
    iget v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mChildSize:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/YearPickerView;->setFadingEdgeLength(I)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/YearPickerView;->init(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0, p0}, Lcom/android/datetimepicker/date/YearPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/YearPickerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/YearPickerView;->setDividerHeight(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/YearPickerView;->onDateChanged()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TextView;)I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/datetimepicker/date/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/datetimepicker/date/YearPickerView;)Lcom/android/datetimepicker/date/DatePickerController;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/datetimepicker/date/YearPickerView;Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;)Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    return-object p1
.end method

.method private static getYearFromTextView(Landroid/widget/TextView;)I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/DatePickerController;->getMaxYear()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 74
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;

    sget v2, Lcom/android/datetimepicker/R$layout;->year_label_text_view:I

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;-><init>(Lcom/android/datetimepicker/date/YearPickerView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mAdapter:Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;

    .line 77
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mAdapter:Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/YearPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getFirstPositionOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/YearPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 141
    if-nez v1, :cond_0

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public onDateChanged()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mAdapter:Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 150
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iget-object v1, p0, Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/android/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/YearPickerView;->postSetSelectionCentered(I)V

    .line 151
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 156
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 158
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/DatePickerController;->tryVibrate()V

    .line 83
    check-cast p2, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    .line 84
    if-eqz p2, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    if-eq p2, v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 90
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 91
    invoke-virtual {p2}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 92
    iput-object p2, p0, Lcom/android/datetimepicker/date/YearPickerView;->mSelectedView:Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-static {p2}, Lcom/android/datetimepicker/date/YearPickerView;->getYearFromTextView(Landroid/widget/TextView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/datetimepicker/date/DatePickerController;->onYearSelected(I)V

    .line 95
    iget-object v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mAdapter:Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_2
    return-void
.end method

.method public postSetSelectionCentered(I)V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/android/datetimepicker/date/YearPickerView;->mViewSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/datetimepicker/date/YearPickerView;->mChildSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/datetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V

    .line 126
    return-void
.end method

.method public postSetSelectionFromTop(II)V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/android/datetimepicker/date/YearPickerView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/datetimepicker/date/YearPickerView$1;-><init>(Lcom/android/datetimepicker/date/YearPickerView;II)V

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/YearPickerView;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method
