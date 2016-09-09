.class public Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;
.super Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;
.source "BirthdayEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$ViewHolder;,
        Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;,
        Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;,
        Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment",
        "<",
        "Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;",
        "Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field private static final VALUES:[I

.field private static sStrings:[Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mDefaultTextColor:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInput:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

.field private mLabelTextColor:I

.field private final mOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTextColor:I

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->VALUES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 70
    const-class v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;

    const-class v1, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mOptions:Ljava/util/List;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    sget-object v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->sStrings:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->birthday_mode_labels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->sStrings:[Ljava/lang/String;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mOptions:Ljava/util/List;

    sget-object v1, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->sStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mOptions:Ljava/util/List;

    sget-object v1, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->sStrings:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mOptions:Ljava/util/List;

    sget-object v1, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->sStrings:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    sget v1, Lcom/android/calendar/R$color;->edit_text_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultTextColor:I

    .line 81
    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSelectedTextColor:I

    .line 82
    sget-object v1, Lcom/android/calendar/R$styleable;->DropdownEditSegment:[I

    .line 83
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    sget v2, Lcom/android/calendar/R$styleable;->DropdownEditSegment_label_color:I

    sget v3, Lcom/android/calendar/R$color;->color_edit_segment_label:I

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 85
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mLabelTextColor:I

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mOptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mLabelTextColor:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSelectedTextColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultTextColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getIndexOf(I)I
    .locals 1

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 139
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

    check-cast p2, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->canBeChanged(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;)Z

    move-result v0

    return v0
.end method

.method protected canBeChanged(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;)Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public initSegment(Ljava/lang/String;Lcom/android/calendar/editor/EditSegmentController;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;->initSegment(Ljava/lang/String;Lcom/android/calendar/editor/EditSegmentController;)V

    .line 108
    const-string v0, "com.google.android.calendar.timely.settings.birthday."

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mAccountName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public onChange(I)V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->VALUES:[I

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget v0, v0, v1

    if-eq p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->getIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 167
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

    check-cast p2, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->onDisposeInput(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;)V

    return-void
.end method

.method protected onDisposeInput(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mInput:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

    .line 121
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;->onFinishInflate()V

    .line 96
    sget v0, Lcom/android/calendar/R$id;->visibility_spinner:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSpinner:Landroid/widget/Spinner;

    .line 97
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$VisibilityAdapter;-><init>(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 99
    invoke-virtual {p0, p0}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 152
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mInput:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mInput:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mAccountName:Ljava/lang/String;

    sget-object v2, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->VALUES:[I

    aget v2, v2, p3

    invoke-interface {v0, v1, v2}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;->onModeChanged(Ljava/lang/String;I)V

    .line 155
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 160
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

    check-cast p2, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->onSetInput(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;)V

    return-void
.end method

.method protected onSetInput(Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;)V
    .locals 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mInput:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

    .line 115
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mInput:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->mAccountName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;->getInitialChecked(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment;->onChange(I)V

    .line 116
    return-void
.end method
