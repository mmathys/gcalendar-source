.class Lcom/android/calendar/groove/GrooveCategories$Subcategory;
.super Ljava/lang/Object;
.source "GrooveCategories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveCategories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Subcategory"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field question:Ljava/lang/String;

.field requiresInput:Z

.field final synthetic this$0:Lcom/android/calendar/groove/GrooveCategories;

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->this$0:Lcom/android/calendar/groove/GrooveCategories;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p3, p0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->type:I

    .line 173
    # getter for: Lcom/android/calendar/groove/GrooveCategories;->GROOVE_NAME_IDS:Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/android/calendar/groove/GrooveCategories;->access$000()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->name:Ljava/lang/String;

    .line 174
    iput-boolean p4, p0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->requiresInput:Z

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZI)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/groove/GrooveCategories$Subcategory;-><init>(Lcom/android/calendar/groove/GrooveCategories;Landroid/content/res/Resources;IZ)V

    .line 180
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->question:Ljava/lang/String;

    .line 181
    return-void
.end method
