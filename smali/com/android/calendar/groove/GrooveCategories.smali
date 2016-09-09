.class public Lcom/android/calendar/groove/GrooveCategories;
.super Ljava/lang/Object;
.source "GrooveCategories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveCategories$Subcategory;,
        Lcom/android/calendar/groove/GrooveCategories$Category;
    }
.end annotation


# static fields
.field private static final GROOVE_NAME_IDS:Landroid/util/SparseIntArray;

.field private static mResources:Landroid/content/res/Resources;

.field private static sInstance:Lcom/android/calendar/groove/GrooveCategories;


# instance fields
.field private final categories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/calendar/groove/GrooveCategories$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$1;

    invoke-direct {v0}, Lcom/android/calendar/groove/GrooveCategories$1;-><init>()V

    sput-object v0, Lcom/android/calendar/groove/GrooveCategories;->GROOVE_NAME_IDS:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 11

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    sput-object p1, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    .line 188
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveCategories;->categories:Landroid/util/SparseArray;

    .line 189
    iget-object v9, p0, Lcom/android/calendar/groove/GrooveCategories;->categories:Landroid/util/SparseArray;

    const/16 v10, 0x100

    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Category;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$string;->groove_category_exercise_title:I

    sget v4, Lcom/android/calendar/R$string;->groove_category_exercise_description:I

    sget v5, Lcom/android/calendar/R$string;->groove_category_exercise_question:I

    sget v6, Lcom/android/calendar/R$color;->category_exercise_illustration:I

    sget v7, Lcom/android/calendar/R$color;->category_exercise_illustration_fab:I

    sget v8, Lcom/android/calendar/R$drawable;->groove_exercise:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/groove/GrooveCategories$Category;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IIIIII)V

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 197
    iget-object v9, p0, Lcom/android/calendar/groove/GrooveCategories;->categories:Landroid/util/SparseArray;

    const/16 v10, 0x200

    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Category;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$string;->groove_category_build_skill_title:I

    sget v4, Lcom/android/calendar/R$string;->groove_category_build_skill_description:I

    sget v5, Lcom/android/calendar/R$string;->groove_category_build_skill_question:I

    sget v6, Lcom/android/calendar/R$color;->category_build_skill_illustration:I

    sget v7, Lcom/android/calendar/R$color;->category_build_skill_illustration_fab:I

    sget v8, Lcom/android/calendar/R$drawable;->groove_skill:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/groove/GrooveCategories$Category;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IIIIII)V

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 205
    iget-object v9, p0, Lcom/android/calendar/groove/GrooveCategories;->categories:Landroid/util/SparseArray;

    const/16 v10, 0x300

    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Category;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$string;->groove_category_friends_and_family_title:I

    sget v4, Lcom/android/calendar/R$string;->groove_category_friends_and_family_description:I

    sget v5, Lcom/android/calendar/R$string;->groove_category_friends_and_family_question:I

    sget v6, Lcom/android/calendar/R$color;->category_friends_and_family_illustration:I

    sget v7, Lcom/android/calendar/R$color;->category_friends_and_family_illustration_fab:I

    sget v8, Lcom/android/calendar/R$drawable;->groove_friends:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/groove/GrooveCategories$Category;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IIIIII)V

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 213
    iget-object v9, p0, Lcom/android/calendar/groove/GrooveCategories;->categories:Landroid/util/SparseArray;

    const/16 v10, 0x400

    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Category;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$string;->groove_category_me_time_title:I

    sget v4, Lcom/android/calendar/R$string;->groove_category_me_time_description:I

    sget v5, Lcom/android/calendar/R$string;->groove_category_me_time_question:I

    sget v6, Lcom/android/calendar/R$color;->category_me_time_illustration:I

    sget v7, Lcom/android/calendar/R$color;->category_me_time_illustration_fab:I

    sget v8, Lcom/android/calendar/R$drawable;->groove_metime:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/groove/GrooveCategories$Category;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IIIIII)V

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 221
    iget-object v9, p0, Lcom/android/calendar/groove/GrooveCategories;->categories:Landroid/util/SparseArray;

    const/16 v10, 0x500

    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Category;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$string;->groove_category_organize_life_title:I

    sget v4, Lcom/android/calendar/R$string;->groove_category_organize_life_description:I

    sget v5, Lcom/android/calendar/R$string;->groove_category_organize_life_question:I

    sget v6, Lcom/android/calendar/R$color;->category_organize_life_illustration:I

    sget v7, Lcom/android/calendar/R$color;->category_organize_life_illustration_fab:I

    sget v8, Lcom/android/calendar/R$drawable;->groove_organize:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/groove/GrooveCategories$Category;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IIIIII)V

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 229
    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/calendar/groove/GrooveCategories;->GROOVE_NAME_IDS:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lcom/android/calendar/groove/GrooveCategories;->sInstance:Lcom/android/calendar/groove/GrooveCategories;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/GrooveCategories;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/calendar/groove/GrooveCategories;->sInstance:Lcom/android/calendar/groove/GrooveCategories;

    .line 405
    :cond_0
    sget-object v0, Lcom/android/calendar/groove/GrooveCategories;->sInstance:Lcom/android/calendar/groove/GrooveCategories;

    return-object v0
.end method


# virtual methods
.method public getCategory(I)Lcom/android/calendar/groove/GrooveCategories$Category;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategories;->categories:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveCategories$Category;

    return-object v0
.end method

.method public getGrooveNameForType(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget-object v1, Lcom/android/calendar/groove/GrooveCategories;->GROOVE_NAME_IDS:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Lcom/google/android/calendar/api/Habit;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getSummary()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget-object v1, Lcom/android/calendar/groove/GrooveCategories;->GROOVE_NAME_IDS:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubcategoryListForCategory(I)[Lcom/android/calendar/groove/GrooveCategories$Subcategory;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 244
    sparse-switch p1, :sswitch_data_0

    .line 376
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 246
    :sswitch_0
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    .line 247
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x101

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v7

    .line 248
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x102

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v4

    .line 249
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x103

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v8

    .line 250
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x104

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v9

    .line 251
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x105

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v10

    .line 252
    const/4 v1, 0x5

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x106

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 253
    const/4 v1, 0x6

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x107

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 254
    const/4 v1, 0x7

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x108

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 256
    const/16 v1, 0x8

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x109

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 258
    const/16 v1, 0x9

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x10a

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 260
    const/16 v1, 0xa

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x10b

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 262
    const/16 v1, 0xb

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x10c

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 264
    const/16 v1, 0xc

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x10d

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 265
    const/16 v1, 0xd

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x10e

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 269
    :sswitch_1
    const/16 v0, 0xc

    new-array v6, v0, [Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    .line 270
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x201

    sget v5, Lcom/android/calendar/R$string;->groove_category_build_skill_practice_language_question:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZI)V

    aput-object v0, v6, v7

    .line 273
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v1, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v2, 0x202

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v0, v6, v4

    .line 275
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x203

    sget v5, Lcom/android/calendar/R$string;->groove_category_build_skill_learn_an_instrument_question:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZI)V

    aput-object v0, v6, v8

    .line 278
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x204

    sget v5, Lcom/android/calendar/R$string;->groove_category_build_skill_make_art_question:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZI)V

    aput-object v0, v6, v9

    .line 281
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v1, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v2, 0x205

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v0, v6, v10

    .line 283
    const/4 v0, 0x5

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x206

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 285
    const/4 v0, 0x6

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x207

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 287
    const/4 v0, 0x7

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x208

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 289
    const/16 v0, 0x8

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x209

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 291
    const/16 v0, 0x9

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x20a

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 293
    const/16 v0, 0xa

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x20b

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 295
    const/16 v0, 0xb

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x20c

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    move-object v0, v6

    .line 297
    goto/16 :goto_0

    .line 299
    :sswitch_2
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    .line 300
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x301

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v7

    .line 302
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x302

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v4

    .line 305
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x303

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v8

    .line 307
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x304

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v9

    .line 309
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x305

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v10

    .line 311
    const/4 v1, 0x5

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x306

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 313
    const/4 v1, 0x6

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x307

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 315
    const/4 v1, 0x7

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x308

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 317
    const/16 v1, 0x8

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x309

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 319
    const/16 v1, 0x9

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x30a

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 321
    const/16 v1, 0xa

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x30b

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 323
    const/16 v1, 0xb

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x30c

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 327
    :sswitch_3
    const/16 v0, 0xd

    new-array v6, v0, [Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    .line 328
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v1, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v2, 0x401

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v0, v6, v7

    .line 329
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v1, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v2, 0x402

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v0, v6, v4

    .line 331
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x403

    sget v5, Lcom/android/calendar/R$string;->groove_category_me_time_hobby_question:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZI)V

    aput-object v0, v6, v8

    .line 333
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v1, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v2, 0x404

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v0, v6, v9

    .line 334
    new-instance v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v1, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v2, 0x405

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v0, v6, v10

    .line 335
    const/4 v0, 0x5

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x406

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 336
    const/4 v0, 0x6

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x407

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 338
    const/4 v0, 0x7

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x408

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 339
    const/16 v0, 0x8

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x409

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 341
    const/16 v0, 0x9

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x40a

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 343
    const/16 v0, 0xa

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x40b

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 345
    const/16 v0, 0xb

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x40c

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    .line 347
    const/16 v0, 0xc

    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x40d

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v6, v0

    move-object v0, v6

    .line 349
    goto/16 :goto_0

    .line 351
    :sswitch_4
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    .line 352
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x501

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v7

    .line 354
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x502

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v4

    .line 356
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x503

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v8

    .line 358
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x504

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v9

    .line 360
    new-instance v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v2, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x505

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v1, v0, v10

    .line 362
    const/4 v1, 0x5

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x506

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 364
    const/4 v1, 0x6

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x507

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 366
    const/4 v1, 0x7

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x508

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 368
    const/16 v1, 0x8

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x509

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 370
    const/16 v1, 0x9

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x50b

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    .line 372
    const/16 v1, 0xa

    new-instance v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    const/16 v4, 0x50c

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x300 -> :sswitch_2
        0x400 -> :sswitch_3
        0x500 -> :sswitch_4
    .end sparse-switch
.end method

.method public getTextSuggestionsForType(I)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    sparse-switch p1, :sswitch_data_0

    .line 394
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 382
    :sswitch_0
    sget-object v0, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$array;->groove_category_build_skill_practice_language_suggestions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :sswitch_1
    sget-object v0, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$array;->groove_category_build_skill_learn_instrument_suggestions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 388
    :sswitch_2
    sget-object v0, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$array;->groove_category_build_skill_make_art_suggestions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :sswitch_3
    sget-object v0, Lcom/android/calendar/groove/GrooveCategories;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$array;->groove_category_me_time_hobby_suggestions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_0
        0x203 -> :sswitch_1
        0x204 -> :sswitch_2
        0x403 -> :sswitch_3
    .end sparse-switch
.end method
