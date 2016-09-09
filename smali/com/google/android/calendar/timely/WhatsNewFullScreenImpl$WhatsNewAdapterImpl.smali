.class Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;
.super Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;
.source "WhatsNewFullScreenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WhatsNewAdapterImpl"
.end annotation


# instance fields
.field private mBackgroundColors:[I

.field private mBodyTexts:[Ljava/lang/CharSequence;

.field private mDisclaimerTexts:[Ljava/lang/CharSequence;

.field private mSplashBackgroundColor:I

.field private mSplashTopResource:I

.field private mTopResources:[I

.field private mTopTexts:[Ljava/lang/CharSequence;

.field private mTransparentColor:I

.field final synthetic this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor(I)I
    .locals 1

    .prologue
    .line 83
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 85
    iget v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mSplashBackgroundColor:I

    .line 91
    :goto_0
    return v0

    .line 86
    :cond_0
    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    .line 88
    iget v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mTransparentColor:I

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mBackgroundColors:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x4

    return v0
.end method

.method public getCustomView(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 174
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_2

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/calendar/R$layout;->custom_welcome_oobe_page:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 177
    sget v0, Lcom/android/calendar/R$id;->image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->getImageResource(I)I

    move-result v2

    .line 179
    if-nez v2, :cond_3

    .line 180
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_0
    sget v0, Lcom/android/calendar/R$id;->texts_frame:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 186
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->getTextsView(I)Landroid/view/View;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    move-object v0, v1

    .line 194
    :cond_2
    return-object v0

    .line 182
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getImageResource(I)I
    .locals 1

    .prologue
    .line 96
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 98
    iget v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mSplashTopResource:I

    .line 104
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 101
    const v0, 0x106000d

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mTopResources:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getTextsView(I)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 109
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/calendar/R$layout;->oobe_bottom_text:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 115
    sget v0, Lcom/android/calendar/R$id;->header:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    sget v1, Lcom/android/calendar/R$id;->body_text_center:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    sget v2, Lcom/android/calendar/R$id;->body_text_left:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    sget v3, Lcom/android/calendar/R$id;->disclaimer_text:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    if-nez p1, :cond_3

    .line 123
    const/16 v4, 0x11

    .line 125
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move v2, v4

    move-object v4, v1

    .line 131
    :goto_1
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mTopTexts:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mBodyTexts:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mDisclaimerTexts:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 136
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :goto_2
    sget v1, Lcom/android/calendar/R$id;->in_page_done_button:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 143
    if-eqz v1, :cond_2

    .line 144
    const/4 v6, 0x3

    if-ne p1, v6, :cond_5

    .line 145
    new-instance v6, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl$1;

    invoke-direct {v6, p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl$1;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v6, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;

    invoke-static {v6}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    :cond_2
    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 164
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v5

    .line 169
    goto/16 :goto_0

    .line 127
    :cond_3
    const v4, 0x800013

    .line 129
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    move v10, v4

    move-object v4, v2

    move v2, v10

    goto :goto_1

    .line 138
    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mDisclaimerTexts:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 154
    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->initialize(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 54
    sget v0, Lcom/android/calendar/R$drawable;->icon:I

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mSplashTopResource:I

    .line 55
    sget v0, Lcom/android/calendar/R$array;->oobe_resources:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 56
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mTopResources:[I

    move v0, v1

    .line 57
    :goto_0
    if-ge v0, v6, :cond_0

    .line 58
    iget-object v4, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mTopResources:[I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    sget v0, Lcom/android/calendar/R$array;->oobe_headers:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mTopTexts:[Ljava/lang/CharSequence;

    .line 63
    sget v0, Lcom/android/calendar/R$array;->oobe_main_texts:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mBodyTexts:[Ljava/lang/CharSequence;

    .line 64
    sget v0, Lcom/android/calendar/R$array;->oobe_disclaimers:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mDisclaimerTexts:[Ljava/lang/CharSequence;

    .line 66
    sget v0, Lcom/android/calendar/R$color;->oobe_welcome_background:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mSplashBackgroundColor:I

    .line 67
    new-array v0, v6, [I

    sget v3, Lcom/android/calendar/R$color;->oobe_welcome_background:I

    .line 68
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x1

    sget v3, Lcom/android/calendar/R$color;->oobe_richness_background:I

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x2

    sget v3, Lcom/android/calendar/R$color;->oobe_create_background:I

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x3

    sget v3, Lcom/android/calendar/R$color;->oobe_smartmail_background:I

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mBackgroundColors:[I

    .line 73
    const v0, 0x106000d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl$WhatsNewAdapterImpl;->mTransparentColor:I

    .line 74
    return-void
.end method
