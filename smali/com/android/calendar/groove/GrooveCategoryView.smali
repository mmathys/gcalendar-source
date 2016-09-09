.class public Lcom/android/calendar/groove/GrooveCategoryView;
.super Landroid/widget/LinearLayout;
.source "GrooveCategoryView.java"


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveCategoryView;->init()V

    .line 20
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->groove_category_view:I

    invoke-static {v0, v1, p0}, Lcom/android/calendar/groove/GrooveCategoryView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveCategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveCategoryView;->mTitle:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/android/calendar/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveCategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveCategoryView;->mDescription:Landroid/widget/TextView;

    .line 44
    return-void
.end method


# virtual methods
.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategoryView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategoryView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
