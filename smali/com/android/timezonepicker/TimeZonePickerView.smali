.class public Lcom/android/timezonepicker/TimeZonePickerView;
.super Landroid/widget/LinearLayout;
.source "TimeZonePickerView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;
    }
.end annotation


# instance fields
.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private mClearButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mFilterAdapter:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

.field private mFirstTime:Z

.field private mHideFilterSearchOnStart:Z

.field mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;JLcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mFirstTime:Z

    .line 60
    iput-object p1, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    sget v1, Lcom/android/timezonepicker/R$layout;->timezonepickerview:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    iput-boolean p7, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    .line 67
    new-instance v1, Lcom/android/timezonepicker/TimeZoneData;

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p3, p4, p5}, Lcom/android/timezonepicker/TimeZoneData;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 69
    new-instance v0, Lcom/android/timezonepicker/TimeZoneResultAdapter;

    iget-object v2, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1, p6}, Lcom/android/timezonepicker/TimeZoneResultAdapter;-><init>(Landroid/content/Context;Lcom/android/timezonepicker/TimeZoneData;Lcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;)V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    .line 70
    sget v0, Lcom/android/timezonepicker/R$id;->timezonelist:I

    invoke-virtual {p0, v0}, Lcom/android/timezonepicker/TimeZonePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 71
    iget-object v2, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v2, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    new-instance v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    iget-object v2, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;-><init>(Landroid/content/Context;Lcom/android/timezonepicker/TimeZoneData;Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;)V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mFilterAdapter:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    .line 76
    sget v0, Lcom/android/timezonepicker/R$id;->searchBox:I

    invoke-virtual {p0, v0}, Lcom/android/timezonepicker/TimeZonePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 77
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/android/timezonepicker/R$string;->hint_time_zone_search:I

    sget v1, Lcom/android/timezonepicker/R$drawable;->ic_search_holo_light:I

    invoke-direct {p0, v0, v1}, Lcom/android/timezonepicker/TimeZonePickerView;->updateHint(II)V

    .line 82
    sget v0, Lcom/android/timezonepicker/R$id;->clear_search:I

    invoke-virtual {p0, v0}, Lcom/android/timezonepicker/TimeZonePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mClearButton:Landroid/widget/ImageButton;

    .line 83
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mClearButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/timezonepicker/TimeZonePickerView$1;

    invoke-direct {v1, p0}, Lcom/android/timezonepicker/TimeZonePickerView$1;-><init>(Lcom/android/timezonepicker/TimeZonePickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/timezonepicker/TimeZonePickerView;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private filterOnString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mFilterAdapter:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    .line 184
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mFilterAdapter:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method private updateHint(II)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZonePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZonePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 121
    new-instance v6, Landroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 123
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v8, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v8

    double-to-int v2, v2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZonePickerView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v4

    .line 127
    :goto_0
    if-eqz v0, :cond_2

    move v3, v2

    .line 128
    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    .line 129
    :goto_2
    invoke-virtual {v5, v3, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    const/16 v2, 0x21

    invoke-virtual {v6, v0, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 131
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 132
    return-void

    :cond_0
    move v0, v1

    .line 125
    goto :goto_0

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0

    :cond_2
    move v3, v1

    .line 127
    goto :goto_1

    :cond_3
    move v0, v2

    .line 128
    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mClearButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mClearButton:Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 155
    :cond_0
    return-void

    .line 153
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public getHideFilterSearchOnStart()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    return v0
.end method

.method public getLastFilterString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZoneResultAdapter;->getLastFilterString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastFilterTime()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZoneResultAdapter;->getLastFilterType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLastFilterType()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZoneResultAdapter;->getLastFilterType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZoneResultAdapter;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/timezonepicker/TimeZonePickerView;->filterOnString(Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZonePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 162
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    .line 166
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mFilterAdapter:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;

    invoke-virtual {v0, p2}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->onClick(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mFirstTime:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mHideFilterSearchOnStart:Z

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mFirstTime:Z

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/timezonepicker/TimeZonePickerView;->filterOnString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showFilterResults(ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerView;->mResultAdapter:Lcom/android/timezonepicker/TimeZoneResultAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/timezonepicker/TimeZoneResultAdapter;->onSetFilter(ILjava/lang/String;I)V

    .line 95
    :cond_0
    return-void
.end method
