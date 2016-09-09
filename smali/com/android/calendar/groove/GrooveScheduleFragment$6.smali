.class Lcom/android/calendar/groove/GrooveScheduleFragment$6;
.super Ljava/lang/Object;
.source "GrooveScheduleFragment.java"

# interfaces
.implements Landroid/support/v7/graphics/Palette$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveScheduleFragment;->getFabColor(Landroid/graphics/Bitmap;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

.field final synthetic val$backgroundColor:I


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveScheduleFragment;I)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$6;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    iput p2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$6;->val$backgroundColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAllowed(I[F)Z
    .locals 4

    .prologue
    .line 448
    iget v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$6;->val$backgroundColor:I

    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
