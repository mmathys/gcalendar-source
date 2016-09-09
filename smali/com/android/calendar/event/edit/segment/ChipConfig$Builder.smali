.class public Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
.super Ljava/lang/Object;
.source "ChipConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/ChipConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundDefault:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSelected:Landroid/graphics/drawable/Drawable;

.field private mChipVerticalSpacing:I

.field private mHeight:I

.field private mIconInset:I

.field private mIconTextSpacing:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMinWidth:I

.field private mShowIcon:Z

.field private mTextInset:I

.field private mTextPaintDefault:Landroid/text/TextPaint;

.field private mTextPaintSelected:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintDefault:Landroid/text/TextPaint;

    .line 128
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintSelected:Landroid/text/TextPaint;

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/event/edit/segment/ChipConfig;)V
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintDefault:Landroid/text/TextPaint;

    .line 128
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintSelected:Landroid/text/TextPaint;

    .line 146
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintDefault:Landroid/text/TextPaint;

    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextPaintDefault:Landroid/text/TextPaint;
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$1300(Lcom/android/calendar/event/edit/segment/ChipConfig;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 147
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintSelected:Landroid/text/TextPaint;

    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextPaintSelected:Landroid/text/TextPaint;
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$1400(Lcom/android/calendar/event/edit/segment/ChipConfig;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 148
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mBackgroundDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$1500(Lcom/android/calendar/event/edit/segment/ChipConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mBackgroundDefault:Landroid/graphics/drawable/Drawable;

    .line 149
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mBackgroundSelected:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$1600(Lcom/android/calendar/event/edit/segment/ChipConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mBackgroundSelected:Landroid/graphics/drawable/Drawable;

    .line 150
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mMinWidth:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$1700(Lcom/android/calendar/event/edit/segment/ChipConfig;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMinWidth:I

    .line 151
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mHeight:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$1800(Lcom/android/calendar/event/edit/segment/ChipConfig;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mHeight:I

    .line 152
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mShowIcon:Z
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$1900(Lcom/android/calendar/event/edit/segment/ChipConfig;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mShowIcon:Z

    .line 153
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mIconInset:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$2000(Lcom/android/calendar/event/edit/segment/ChipConfig;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mIconInset:I

    .line 154
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextInset:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$2100(Lcom/android/calendar/event/edit/segment/ChipConfig;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextInset:I

    .line 155
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mIconTextSpacing:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$2200(Lcom/android/calendar/event/edit/segment/ChipConfig;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mIconTextSpacing:I

    .line 156
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mChipVerticalSpacing:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$2300(Lcom/android/calendar/event/edit/segment/ChipConfig;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mChipVerticalSpacing:I

    .line 157
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mMarginLeft:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$2400(Lcom/android/calendar/event/edit/segment/ChipConfig;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMarginLeft:I

    .line 158
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig;->mMarginRight:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->access$2500(Lcom/android/calendar/event/edit/segment/ChipConfig;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMarginRight:I

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintDefault:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintSelected:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mChipVerticalSpacing:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMarginLeft:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMarginRight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mBackgroundDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mBackgroundSelected:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMinWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mShowIcon:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mIconInset:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextInset:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mIconTextSpacing:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/calendar/event/edit/segment/ChipConfig;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/android/calendar/event/edit/segment/ChipConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/ChipConfig;-><init>(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;Lcom/android/calendar/event/edit/segment/ChipConfig$1;)V

    return-object v0
.end method

.method public setBackgroundDefault(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mBackgroundDefault:Landroid/graphics/drawable/Drawable;

    .line 183
    return-object p0
.end method

.method public setBackgroundSelected(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mBackgroundSelected:Landroid/graphics/drawable/Drawable;

    .line 188
    return-object p0
.end method

.method public setChipVerticalSpacing(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mChipVerticalSpacing:I

    .line 223
    return-object p0
.end method

.method public setHeight(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mHeight:I

    .line 198
    return-object p0
.end method

.method public setIconInset(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 207
    iput p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mIconInset:I

    .line 208
    return-object p0
.end method

.method public setIconTextSpacing(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mIconTextSpacing:I

    .line 218
    return-object p0
.end method

.method public setMarginRight(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMarginRight:I

    .line 233
    return-object p0
.end method

.method public setMinWidth(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMinWidth:I

    .line 193
    return-object p0
.end method

.method public setShowIcon(Z)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mShowIcon:Z

    .line 203
    return-object p0
.end method

.method public setTextColorDefault(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintDefault:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 168
    return-object p0
.end method

.method public setTextInset(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 0

    .prologue
    .line 212
    iput p1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextInset:I

    .line 213
    return-object p0
.end method

.method public setTextPaintDefault(Landroid/text/TextPaint;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintDefault:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 163
    return-object p0
.end method

.method public setTextPaintSelected(Landroid/text/TextPaint;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintSelected:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 173
    return-object p0
.end method
