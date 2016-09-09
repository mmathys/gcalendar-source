.class Lcom/android/calendar/groove/GrooveCategories$Category;
.super Ljava/lang/Object;
.source "GrooveCategories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveCategories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Category"
.end annotation


# instance fields
.field backgroundColor:I

.field backgroundDrawableResId:I

.field description:Ljava/lang/String;

.field fabColor:I

.field question:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/calendar/groove/GrooveCategories;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IIIIII)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveCategories$Category;->this$0:Lcom/android/calendar/groove/GrooveCategories;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveCategories$Category;->title:Ljava/lang/String;

    .line 157
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveCategories$Category;->description:Ljava/lang/String;

    .line 158
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveCategories$Category;->question:Ljava/lang/String;

    .line 159
    invoke-virtual {p2, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundColor:I

    .line 160
    invoke-virtual {p2, p7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/GrooveCategories$Category;->fabColor:I

    .line 161
    iput p8, p0, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundDrawableResId:I

    .line 162
    return-void
.end method
