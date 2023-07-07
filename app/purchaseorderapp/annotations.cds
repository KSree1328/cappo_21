using CatalogService as service from '../../srv/CatalogService';

annotate CatalogService.POs with @(

UI: {
    SelectionFields           : [
        PO_ID,
        GROSS_AMOUNT,
        LIFECYCLE_STATUS,
        CURRENCY_code,
        PARTNER_GUID.COMPANY_NAME
    ],
    LineItem                  : [
        {
            $Type: 'UI.DataField',
            Value: PO_ID
        },
        {
            $Type: 'UI.DataField',
            Value: GROSS_AMOUNT
        },
        {
            $Type                    : 'UI.DataField',
            Value                    : OVERALL_STATUS,
            Criticality              : Criticality,
            CriticalityRepresentation: #WithIcon
        },
        {
            $Type: 'UI.DataFieldForAction',
            Label: 'boost',
            Action: 'CatalogService.boost',
            Inline: true
        },
        {
            $Type: 'UI.DataField',
            Value: CURRENCY_code
        },
        {
            $Type: 'UI.DataField',
            Value: PARTNER_GUID.COMPANY_NAME
        },
        {
            $Type: 'UI.DataField',
            Value: PARTNER_GUID.ADDRESS_GUID.COUNTRY
        },
        {
            $Type: 'UI.DataField',
            Value: TAX_Amount
        }
    ],
    HeaderInfo                : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Purchase Order',
        TypeNamePlural: 'Purchase Orders',
        Title         : {
            Label: 'Purchase Order Id',
            Value: PO_ID
        },
        Description   : {
            Label: 'Supplier',
            Value: PARTNER_GUID.COMPANY_NAME
        },
        ImageUrl      : 'data:image/jpeg;base64,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'
    },
    Facets                    : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Details',
            Facets: [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'More Details',
                    Target: ![@UI.FieldGroup#JayaSreeFields]
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Amounts',
                    Target: ![@UI.FieldGroup#SecondGroup]
                }
            ]
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Line Items',
            Target: Items.![@UI.LineItem]
        },
    ],
    FieldGroup #SecondGroup   : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: GROSS_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: NET_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: TAX_Amount
            },
            {
                $Type: 'UI.DataField',
                Value: CURRENCY_code
            },
        ]
    },
    FieldGroup #JayaSreeFields: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: PO_ID
            },
            {
                $Type: 'UI.DataField',
                Value: PARTNER_GUID_NODE_KEY
            },
            {
                $Type: 'UI.DataField',
                Value: PARTNER_GUID.BP_ID
            },
            {
                $Type: 'UI.DataField',
                Value: PARTNER_GUID.COMPANY_NAME
            },
            {
                $Type: 'UI.DataField',
                Value: LIFECYCLE_STATUS
            },
        ]
    }
}

);

annotate CatalogService.POs with {
    PARTNER_GUID@(
        Common: {
            Text: 'PARTNER_GUID.COMPANY_NAME',
        },
        ValueList.entity: CatalogService.BusinessPartnerSet
    )
};

annotate CatalogService.purchaseOrderItems with {
    PRODUCT_GUID@(
        Common: {
            Text: PRODUCT_GUID.DESCRIPTION,
        },
        ValueList.entity: CatalogService.ProductSet
    )
};

@cds.odata.valuelist
annotate CatalogService.BusinessPartnerSet with @(
    UI.Identification:[{
        $Type: 'UI.DataField',
        Value: COMPANY_NAME
    }]
);

@cds.odata.valuelist
annotate CatalogService.ProductSet with @(
    UI.Identification:[{
        $Type: 'UI.DataField',
        Value: DESCRIPTION
    }]
);

annotate CatalogService.purchaseOrderItems with @(
UI: {
    LineItem                  : [
        {
            $Type: 'UI.DataField',
            Value: PO_ITEM_POS
        },
        {
            $Type: 'UI.DataField',
            Value: PRODUCT_GUID_NODE_KEY,
        },
        {
            $Type: 'UI.DataField',
            Value: PRODUCT_GUID.PRODUCT_ID,
        },
        {
            $Type: 'UI.DataField',
            Value: GROSS_AMOUNT,
        },
        {
            $Type: 'UI.DataField',
            Value: NET_AMOUNT,
        },
        {
            $Type: 'UI.DataField',
            Value: TAX_Amount
        },
        {
            $Type: 'UI.DataField',
            Value: CURRENCY_code
        },
    ],
    HeaderInfo                : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Item',
        TypeNamePlural: 'Items',
        Title         : {
            $Type: 'UI.DataField',
            Value: PRODUCT_GUID_NODE_KEY,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: PO_ITEM_POS
        }
    },
    Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#LineItemHeader',
            Label : 'More Info',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#ProductDetails',
            Label : 'Product Info'
        },
    ],
    FieldGroup #LineItemHeader: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: PO_ITEM_POS
            },
            {
                $Type: 'UI.DataField',
                Value: PRODUCT_GUID_NODE_KEY
            },
            {
                $Type: 'UI.DataField',
                Value: GROSS_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: NET_AMOUNT
            },
            {
                $Type: 'UI.DataField',
                Value: TAX_Amount
            },
            {
                $Type: 'UI.DataField',
                Value: CURRENCY_code
            },
        ],
    },
    FieldGroup #ProductDetails: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: PRODUCT_GUID.PRODUCT_ID
            },
            {
                $Type: 'UI.DataField',
                Value: PRODUCT_GUID.DESCRIPTION
            },
            {
                $Type: 'UI.DataField',
                Value: PRODUCT_GUID.TYPE_CODE
            },
            {
                $Type: 'UI.DataField',
                Value: PRODUCT_GUID.CATEGORY
            },
            {
                $Type: 'UI.DataField',
                Value: PRODUCT_GUID.SUPPLIER_GUID.COMPANY_NAME
            },
            {
                $Type: 'UI.DataField',
                Value: PRODUCT_GUID.TAX_TARIF_CODE
            },
        ]
    },
});
