.class public Lcom/android/calendar/groove/CustomGrooveFragment;
.super Lcom/android/calendar/groove/GrooveWizardFragment;
.source "CustomGrooveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/CustomGrooveFragment$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackArrow:Lcom/android/calendar/groove/BackButtonView;

.field private mCategoryId:I

.field private mEditText:Landroid/widget/EditText;

.field private mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

.field private mQuestion:Ljava/lang/String;

.field private mSubcategoryContainer:Landroid/widget/LinearLayout;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/calendar/groove/CustomGrooveFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/CustomGrooveFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/groove/CustomGrooveFragment;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->returnWithTitle()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/groove/CustomGrooveFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/groove/CustomGrooveFragment;)Lcom/android/calendar/utils/widgets/FloatingActionButton;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/groove/CustomGrooveFragment;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/groove/CustomGrooveFragment;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/groove/CustomGrooveFragment;->saveSelection(ILjava/lang/String;)V

    return-void
.end method

.method private createSuggestionList()V
    .locals 6

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$style;->GrooveCreationWizardButton:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 178
    iget v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mType:I

    invoke-static {v2}, Lcom/google/android/calendar/api/HabitUtil;->isSubtype(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mType:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/GrooveCategories;->getTextSuggestionsForType(I)[Ljava/lang/String;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_1

    .line 181
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 182
    aget-object v3, v2, v0

    .line 184
    invoke-static {v1, v3}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createSubcategoryButton(Landroid/view/ContextThemeWrapper;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    .line 185
    new-instance v5, Lcom/android/calendar/groove/CustomGrooveFragment$5;

    invoke-direct {v5, p0, v3}, Lcom/android/calendar/groove/CustomGrooveFragment$5;-><init>(Lcom/android/calendar/groove/CustomGrooveFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v3, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    iget v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mType:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/GrooveCategories;->getSubcategoryListForCategory(I)[Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    move-result-object v2

    .line 198
    iget v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mCategoryId:I

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getNumSubcategoriesToDisplay(I)I

    move-result v0

    .line 199
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 200
    aget-object v3, v2, v0

    .line 201
    iget-object v4, v3, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->name:Ljava/lang/String;

    .line 202
    invoke-static {v1, v4}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createSubcategoryButton(Landroid/view/ContextThemeWrapper;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    .line 203
    new-instance v5, Lcom/android/calendar/groove/CustomGrooveFragment$6;

    invoke-direct {v5, p0, v3}, Lcom/android/calendar/groove/CustomGrooveFragment$6;-><init>(Lcom/android/calendar/groove/CustomGrooveFragment;Lcom/android/calendar/groove/GrooveCategories$Subcategory;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v3, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_1
    return-void
.end method

.method private initEditText()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mQuestion:Ljava/lang/String;

    .line 137
    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mCategoryId:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveCategories;->getCategory(I)Lcom/android/calendar/groove/GrooveCategories$Category;

    move-result-object v0

    iget-object v0, v0, Lcom/android/calendar/groove/GrooveCategories$Category;->question:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/calendar/groove/CustomGrooveFragment$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/groove/CustomGrooveFragment$3;-><init>(Lcom/android/calendar/groove/CustomGrooveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/calendar/groove/CustomGrooveFragment$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/groove/CustomGrooveFragment$4;-><init>(Lcom/android/calendar/groove/CustomGrooveFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/android/calendar/groove/CustomGrooveFragment;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/android/calendar/groove/CustomGrooveFragment;

    invoke-direct {v0}, Lcom/android/calendar/groove/CustomGrooveFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v2, "GROOVE_TYPE_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    const-string v2, "CUSTOM_QUESTION"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/CustomGrooveFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcom/android/calendar/groove/CustomGrooveFragment;->createFadeTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/CustomGrooveFragment;->setReturnTransition(Landroid/transition/Transition;)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/CustomGrooveFragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 58
    :cond_0
    return-object v0
.end method

.method private returnWithTitle()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/calendar/groove/CustomGrooveFragment$Listener;

    if-eqz v1, :cond_0

    .line 170
    iget v1, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mType:I

    invoke-direct {p0, v1, v0}, Lcom/android/calendar/groove/CustomGrooveFragment;->saveSelection(ILjava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method private saveSelection(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->createReenterTransition()Landroid/transition/TransitionSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/CustomGrooveFragment;->setReenterTransition(Landroid/transition/Transition;)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/CustomGrooveFragment$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/calendar/groove/CustomGrooveFragment$Listener;->onCustomGrooveSelectionComplete(ILjava/lang/String;)V

    .line 220
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/calendar/groove/GrooveWizardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "GROOVE_TYPE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mType:I

    .line 131
    iget v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mType:I

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitUtil;->getParentType(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mCategoryId:I

    .line 132
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CUSTOM_QUESTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mQuestion:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 71
    sget v0, Lcom/android/calendar/R$layout;->custom_groove_fragment:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    sget v0, Lcom/android/calendar/R$id;->subcategory_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    .line 73
    sget v0, Lcom/android/calendar/R$id;->frame:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mFrame:Landroid/view/ViewGroup;

    .line 74
    sget v0, Lcom/android/calendar/R$id;->back_arrow:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/BackButtonView;

    iput-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mBackArrow:Lcom/android/calendar/groove/BackButtonView;

    .line 75
    sget v0, Lcom/android/calendar/R$id;->floating_action_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/utils/widgets/FloatingActionButton;

    iput-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    .line 77
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    .line 78
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget v0, Lcom/android/calendar/R$id;->inset_frame:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->adjustCardUi()V

    .line 82
    invoke-direct {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->initEditText()V

    .line 84
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mBackArrow:Lcom/android/calendar/groove/BackButtonView;

    new-instance v2, Lcom/android/calendar/groove/CustomGrooveFragment$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/groove/CustomGrooveFragment$1;-><init>(Lcom/android/calendar/groove/CustomGrooveFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/BackButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v0

    iget v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mCategoryId:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/GrooveCategories;->getCategory(I)Lcom/android/calendar/groove/GrooveCategories$Category;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    new-instance v3, Lcom/android/calendar/groove/CustomGrooveFragment$2;

    invoke-direct {v3, p0}, Lcom/android/calendar/groove/CustomGrooveFragment$2;-><init>(Lcom/android/calendar/groove/CustomGrooveFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    invoke-virtual {v2, v4}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setSize(I)V

    .line 98
    iget-object v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    invoke-virtual {v2, v5}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->hide(Z)V

    .line 99
    iget-object v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    iget v3, v0, Lcom/android/calendar/groove/GrooveCategories$Category;->fabColor:I

    invoke-virtual {v2, v3}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setColor(I)V

    .line 100
    iget-object v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mFrame:Landroid/view/ViewGroup;

    iget v0, v0, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundColor:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 101
    invoke-direct {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->createSuggestionList()V

    .line 102
    invoke-virtual {p0, v4}, Lcom/android/calendar/groove/CustomGrooveFragment;->setStatusBarTheme(I)V

    .line 103
    return-object v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->onPause()V

    .line 120
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 110
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/calendar/groove/CustomGrooveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 114
    iget-object v1, p0, Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 115
    return-void
.end method
