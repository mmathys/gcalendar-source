.class public Lcom/google/android/calendar/timely/settings/DurationPreferences;
.super Landroid/preference/PreferenceFragment;
.source "DurationPreferences.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/settings/DurationPreferences$ViewHolder;,
        Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/PreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountsInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultTextColor:I

.field private mFirstElementMargin:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialAccountsInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLineTopMargin:I

.field private mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

.field private mNoEndTimeString:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mSegmentsViewGroup:Landroid/view/ViewGroup;

.field private mSelectedTextColor:I

.field private mSpinnerIntegerValues:[I

.field private mSpinnerTitle:Ljava/lang/String;

.field private mSpinnerValues:[Ljava/lang/String;

.field private mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "defaultEventLength"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "defaultNoEndTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/timely/settings/DurationPreferences;)[I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerIntegerValues:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/timely/settings/DurationPreferences;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/timely/settings/DurationPreferences;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/timely/settings/DurationPreferences;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/timely/settings/DurationPreferences;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSelectedTextColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/timely/settings/DurationPreferences;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mDefaultTextColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/timely/settings/DurationPreferences;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getEventDurationText(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 238
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mNoEndTimeString:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->end_time_min:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getValuePosition(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 224
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerIntegerValues:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerIntegerValues:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 229
    :goto_1
    return v0

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 229
    goto :goto_1
.end method

.method private prepareViews()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 172
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 174
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mFirstElementMargin:I

    invoke-direct {v2, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 181
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v10, :cond_0

    .line 182
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/calendar/R$layout;->setting_segment_subhead:I

    iget-object v5, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 183
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/calendar/R$string;->settings_google_account:I

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 184
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/calendar/R$layout;->setting_spinner:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 190
    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v4, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;

    invoke-direct {v4, p0, v2}, Lcom/google/android/calendar/timely/settings/DurationPreferences$EventDurationAdapter;-><init>(Lcom/google/android/calendar/timely/settings/DurationPreferences;Landroid/widget/Spinner;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->getValuePosition(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 194
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 196
    new-instance v0, Lcom/google/android/calendar/timely/settings/DurationPreferences$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/timely/settings/DurationPreferences$1;-><init>(Lcom/google/android/calendar/timely/settings/DurationPreferences;Landroid/accounts/Account;)V

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mLineTopMargin:I

    invoke-direct {v2, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->line_separator_horizontal:I

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->setting_segment_disclaimer:I

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$string;->settings_default_event_duration_label:I

    .line 220
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 120
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    .line 78
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->no_end_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mNoEndTimeString:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->settings_default_event_duration_title_spinner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerTitle:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->line_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mLineTopMargin:I

    .line 82
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->setting_first_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mFirstElementMargin:I

    .line 84
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->setting_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mDefaultTextColor:I

    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSelectedTextColor:I

    .line 87
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$array;->default_event_duration_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerIntegerValues:[I

    .line 88
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerIntegerValues:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerValues:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerIntegerValues:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->getEventDurationText(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 124
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 125
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/calendar/timely/settings/DurationPreferences;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountName ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v4

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->loading_segments_preferences_fragment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    sget v0, Lcom/android/calendar/R$id;->segments:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSegmentsViewGroup:Landroid/view/ViewGroup;

    .line 102
    new-instance v0, Lcom/android/calendar/timely/LoadingStateManager;

    sget v2, Lcom/android/calendar/R$id;->scroll_view:I

    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$id;->loading_view:I

    .line 104
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/timely/LoadingStateManager;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    .line 105
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->startLoadingPhases()V

    .line 106
    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 136
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 140
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    .line 142
    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_6

    aget-object v7, v5, v1

    .line 152
    const-string v0, "com.android.calendar"

    invoke-static {v7, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 153
    const/16 v0, 0x3c

    .line 155
    iget-object v8, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 158
    const-string v8, "DurationPreferences"

    const-string v9, "Unable to find timely settings for %s"

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v10, v2

    invoke-static {v8, v9, v10}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 162
    :goto_2
    iget-object v8, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v8, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    .line 140
    goto :goto_0

    .line 160
    :cond_5
    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->onDataLoaded()V

    .line 168
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->prepareViews()V

    .line 169
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 244
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 247
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 248
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v1, v4, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 256
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 261
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 262
    new-instance v0, Lcom/google/android/calendar/timely/settings/DurationPreferences$2;

    invoke-direct {v0, p0, v2}, Lcom/google/android/calendar/timely/settings/DurationPreferences$2;-><init>(Lcom/google/android/calendar/timely/settings/DurationPreferences;Ljava/util/Map;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 273
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/settings/DurationPreferences$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 275
    :cond_3
    return-void
.end method
