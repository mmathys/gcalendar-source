.class public Lcom/android/ex/chips/DropdownChipLayouter;
.super Ljava/lang/Object;
.source "DropdownChipLayouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;,
        Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;,
        Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;,
        Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;
    }
.end annotation


# instance fields
.field private mAutocompleteDividerMarginStart:I

.field private final mContext:Landroid/content/Context;

.field private mDeleteListener:Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mPermissionRequestDismissedListener:Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;

.field private mQuery:Lcom/android/ex/chips/Queries$Query;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/ex/chips/R$dimen;->chip_wrapper_start_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mAutocompleteDividerMarginStart:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/chips/DropdownChipLayouter;)Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mDeleteListener:Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/chips/DropdownChipLayouter;)Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mPermissionRequestDismissedListener:Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;

    return-object v0
.end method

.method private static isAllWhitespace(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 518
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 528
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 522
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 523
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 528
    goto :goto_0
.end method


# virtual methods
.method protected bindDrawableToDeleteView(Landroid/graphics/drawable/StateListDrawable;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 282
    if-nez p3, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    if-nez p1, :cond_2

    .line 286
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 289
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    sget v1, Lcom/android/ex/chips/R$string;->dropdown_delete_button_desc:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mDeleteListener:Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lcom/android/ex/chips/DropdownChipLayouter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/chips/DropdownChipLayouter$1;-><init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected bindIconToView(ZLcom/android/ex/chips/RecipientEntry;Landroid/widget/ImageView;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    if-nez p3, :cond_0

    .line 278
    :goto_0
    return-void

    .line 248
    :cond_0
    if-eqz p1, :cond_3

    .line 249
    sget-object v0, Lcom/android/ex/chips/DropdownChipLayouter$3;->$SwitchMap$com$android$ex$chips$DropdownChipLayouter$AdapterType:[I

    invoke-virtual {p4}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 274
    :goto_1
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 251
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    .line 252
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 253
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/DropdownChipLayouter;->getDefaultPhotoResId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 261
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/DropdownChipLayouter;->getDefaultPhotoResId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 276
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bindIndicatorToView(ILjava/lang/String;Landroid/widget/TextView;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 307
    if-eqz p3, :cond_1

    .line 308
    if-nez p2, :cond_0

    if-eqz p1, :cond_3

    .line 309
    :cond_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    if-eqz p1, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 318
    :goto_0
    invoke-virtual {p3, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 324
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, v1

    .line 316
    goto :goto_0

    .line 321
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bindPermissionRequestDismissView(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v0, Lcom/android/ex/chips/DropdownChipLayouter$2;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/DropdownChipLayouter$2;-><init>(Lcom/android/ex/chips/DropdownChipLayouter;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected bindTextToView(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/RecipientEntry;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .prologue
    .line 108
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/ex/chips/DropdownChipLayouter;->bindView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/RecipientEntry;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Ljava/lang/String;Landroid/graphics/drawable/StateListDrawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bindView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/RecipientEntry;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Ljava/lang/String;Landroid/graphics/drawable/StateListDrawable;)Landroid/view/View;
    .locals 10

    .prologue
    .line 120
    move-object/from16 v0, p6

    invoke-virtual {p0, v0, p3}, Lcom/android/ex/chips/DropdownChipLayouter;->getStyledResults(Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 121
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 122
    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 123
    const/4 v3, 0x1

    .line 124
    invoke-virtual {p0, p3}, Lcom/android/ex/chips/DropdownChipLayouter;->getDestinationType(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 126
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/ex/chips/DropdownChipLayouter;->reuseOrInflateView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)Landroid/view/View;

    move-result-object v6

    .line 128
    new-instance v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;

    invoke-direct {v7, p0, v6}, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;-><init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/view/View;)V

    .line 131
    sget-object v4, Lcom/android/ex/chips/DropdownChipLayouter$3;->$SwitchMap$com$android$ex$chips$DropdownChipLayouter$AdapterType:[I

    invoke-virtual {p5}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v8

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_0

    :cond_0
    move-object v4, v2

    move-object v2, v1

    move-object v1, v5

    .line 175
    :goto_0
    iget-object v5, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->displayNameView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v5}, Lcom/android/ex/chips/DropdownChipLayouter;->bindTextToView(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 176
    iget-object v4, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->destinationView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v4}, Lcom/android/ex/chips/DropdownChipLayouter;->bindTextToView(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 177
    iget-object v2, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->destinationTypeView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->bindTextToView(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 178
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, p3, v1, p5}, Lcom/android/ex/chips/DropdownChipLayouter;->bindIconToView(ZLcom/android/ex/chips/RecipientEntry;Landroid/widget/ImageView;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)V

    .line 179
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->deleteView:Landroid/widget/ImageView;

    move-object/from16 v0, p7

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->bindDrawableToDeleteView(Landroid/graphics/drawable/StateListDrawable;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 181
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getIndicatorIconId()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getIndicatorText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->indicatorView:Landroid/widget/TextView;

    .line 180
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/ex/chips/DropdownChipLayouter;->bindIndicatorToView(ILjava/lang/String;Landroid/widget/TextView;)V

    .line 182
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->permissionRequestDismissView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/DropdownChipLayouter;->bindPermissionRequestDismissView(Landroid/widget/ImageView;)V

    .line 185
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v1

    .line 186
    if-nez v1, :cond_6

    .line 187
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->personViewGroup:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->setViewVisibility(Landroid/view/View;I)V

    .line 188
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->permissionViewGroup:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->setViewVisibility(Landroid/view/View;I)V

    .line 189
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->permissionBottomDivider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->setViewVisibility(Landroid/view/View;I)V

    .line 196
    :cond_1
    :goto_1
    return-object v6

    .line 133
    :pswitch_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 138
    :cond_2
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->isFirstLevel()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 139
    const/4 v2, 0x0

    .line 143
    :goto_2
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->isFirstLevel()Z

    move-result v4

    if-nez v4, :cond_8

    .line 144
    const/4 v3, 0x0

    .line 145
    const/4 v1, 0x0

    move-object v4, v3

    move v3, v1

    .line 149
    :goto_3
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->topDivider:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 150
    iget-object v8, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->topDivider:Landroid/view/View;

    if-nez p4, :cond_4

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->topDivider:Landroid/view/View;

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mAutocompleteDividerMarginStart:I

    .line 151
    invoke-static {v1, v8}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 155
    :cond_3
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->bottomDivider:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 156
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->bottomDivider:Landroid/view/View;

    .line 157
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mAutocompleteDividerMarginStart:I

    .line 156
    invoke-static {v1, v8}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    move-object v1, v5

    goto/16 :goto_0

    .line 150
    :cond_4
    const/16 v1, 0x8

    goto :goto_4

    .line 162
    :pswitch_1
    if-eqz p4, :cond_0

    .line 163
    const/4 v2, 0x0

    .line 164
    const/4 v3, 0x0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ex/chips/PhoneUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 169
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 171
    :cond_5
    const/4 v4, 0x0

    move-object v9, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_0

    .line 190
    :cond_6
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 191
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->personViewGroup:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->setViewVisibility(Landroid/view/View;I)V

    .line 192
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->permissionViewGroup:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->setViewVisibility(Landroid/view/View;I)V

    .line 193
    iget-object v1, v7, Lcom/android/ex/chips/DropdownChipLayouter$ViewHolder;->permissionBottomDivider:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->setViewVisibility(Landroid/view/View;I)V

    goto/16 :goto_1

    :cond_7
    move-object v1, v5

    goto/16 :goto_0

    :cond_8
    move-object v4, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto/16 :goto_2

    :cond_a
    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto/16 :goto_2

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getAlternateItemLayoutResId(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lcom/android/ex/chips/DropdownChipLayouter$3;->$SwitchMap$com$android$ex$chips$DropdownChipLayouter$AdapterType:[I

    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 383
    sget v0, Lcom/android/ex/chips/R$layout;->chips_recipient_dropdown_item:I

    :goto_0
    return v0

    .line 379
    :pswitch_0
    sget v0, Lcom/android/ex/chips/R$layout;->chips_autocomplete_recipient_dropdown_item:I

    goto :goto_0

    .line 381
    :pswitch_1
    sget v0, Lcom/android/ex/chips/R$layout;->chips_recipient_dropdown_item:I

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getDefaultPhotoResId()I
    .locals 1

    .prologue
    .line 392
    sget v0, Lcom/android/ex/chips/R$drawable;->ic_contact_picture:I

    return v0
.end method

.method protected getDeleteResId()I
    .locals 1

    .prologue
    .line 439
    const v0, 0x1020007

    return v0
.end method

.method protected getDestinationResId()I
    .locals 1

    .prologue
    .line 416
    const v0, 0x1020014

    return v0
.end method

.method protected getDestinationType(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    iget-object v1, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestinationType()I

    move-result v2

    .line 348
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestinationLabel()Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ex/chips/Queries$Query;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 347
    return-object v0
.end method

.method protected getDestinationTypeResId()I
    .locals 1

    .prologue
    .line 424
    const v0, 0x1020015

    return v0
.end method

.method protected getDisplayNameResId()I
    .locals 1

    .prologue
    .line 407
    const v0, 0x1020016

    return v0
.end method

.method protected getItemLayoutResId(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I
    .locals 2

    .prologue
    .line 359
    sget-object v0, Lcom/android/ex/chips/DropdownChipLayouter$3;->$SwitchMap$com$android$ex$chips$DropdownChipLayouter$AdapterType:[I

    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 365
    sget v0, Lcom/android/ex/chips/R$layout;->chips_recipient_dropdown_item:I

    :goto_0
    return v0

    .line 361
    :pswitch_0
    sget v0, Lcom/android/ex/chips/R$layout;->chips_autocomplete_recipient_dropdown_item:I

    goto :goto_0

    .line 363
    :pswitch_1
    sget v0, Lcom/android/ex/chips/R$layout;->chips_recipient_dropdown_item:I

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getPermissionGroupResId()I
    .locals 1

    .prologue
    .line 446
    sget v0, Lcom/android/ex/chips/R$id;->chip_permission_wrapper:I

    return v0
.end method

.method protected getPermissionRequestDismissResId()I
    .locals 1

    .prologue
    .line 454
    const v0, 0x1020008

    return v0
.end method

.method protected getPersonGroupResId()I
    .locals 1

    .prologue
    .line 399
    sget v0, Lcom/android/ex/chips/R$id;->chip_person_wrapper:I

    return v0
.end method

.method protected getPhotoResId()I
    .locals 1

    .prologue
    .line 432
    const v0, 0x1020006

    return v0
.end method

.method protected getStyledResults(Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;)[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 470
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/chips/DropdownChipLayouter;->getStyledResults(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getStyledResults(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-static {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->isAllWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    :goto_0
    return-object p2

    .line 490
    :cond_0
    array-length v1, p2

    new-array v2, v1, [Ljava/lang/CharSequence;

    move v1, v0

    .line 492
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 493
    aget-object v3, p2, v0

    .line 494
    if-nez v3, :cond_1

    .line 492
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    :cond_1
    if-nez v1, :cond_2

    .line 499
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 500
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 501
    invoke-static {v3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 502
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mContext:Landroid/content/Context;

    .line 503
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/ex/chips/R$color;->chips_dropdown_text_highlighted:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    const/16 v6, 0x21

    .line 505
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 507
    aput-object v1, v2, v0

    .line 508
    const/4 v1, 0x1

    .line 509
    goto :goto_2

    .line 512
    :cond_2
    aput-object v3, v2, v0

    goto :goto_2

    :cond_3
    move-object p2, v2

    .line 514
    goto :goto_0
.end method

.method protected reuseOrInflateView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)Landroid/view/View;
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0, p3}, Lcom/android/ex/chips/DropdownChipLayouter;->getItemLayoutResId(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I

    move-result v0

    .line 211
    sget-object v1, Lcom/android/ex/chips/DropdownChipLayouter$3;->$SwitchMap$com$android$ex$chips$DropdownChipLayouter$AdapterType:[I

    invoke-virtual {p3}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    if-eqz p1, :cond_0

    :goto_1
    return-object p1

    .line 216
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/android/ex/chips/DropdownChipLayouter;->getAlternateItemLayoutResId(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I

    move-result v0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setQuery(Lcom/android/ex/chips/Queries$Query;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    .line 79
    return-void
.end method

.method protected setViewVisibility(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_0
    return-void
.end method
